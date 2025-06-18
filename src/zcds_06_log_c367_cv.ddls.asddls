@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Funciones de segregación II'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_06_LOG_C367_CV
  as select from /dmo/travel
{
  key travel_id                                as TravelId,
      agency_id                                as AgencyId,
      cast( total_price as abap.dec( 16, 2 ) ) as TotalPrice,
      currency_code                            as CurrencyCode
}
