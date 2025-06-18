@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity ZCDS_07_LOG_C367_CV
  with parameters
    pFromCurrency : abap.cuky,
    ptoCurrency   : abap.cuky
  as select from /dmo/travel
{
  key travel_id                                              as TravelId,
      @Semantics.amount.currencyCode: 'OriginalCurrency'
      total_price                                            as OrigenPrice,

      currency_code                                          as OriginalCurrency,

      @Semantics.amount.currencyCode: 'OriginalCurrency'
      currency_conversion( amount => total_price,
                           source_currency => $parameters.pFromCurrency,
                           target_currency => $parameters.ptoCurrency,
                           exchange_rate_date => begin_date,
                           client => $session.client,
                           error_handling => 'SET_TO_NULL' ) as ConvertedPrice,

      $parameters.ptoCurrency                                as ConvertedCurrency

}
where
  currency_code = $parameters.pFromCurrency
