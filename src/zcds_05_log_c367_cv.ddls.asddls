@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Funciones de segregación'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_05_LOG_C367_CV
  as select from ZCDS_06_LOG_C367_CV
{
  key TravelId,
      AgencyId,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      min(TotalPrice)                      as MinTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      max(TotalPrice)                      as MaxTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalPrice)                      as SumTotalPrice,

//      @Semantics.amount.currencyCode: 'CurrencyCode'
//      count(distinct(TotalPrice))          as CountDistTotalPrice,

      count(*)                             as CountAllTotalPrice,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      avg(TotalPrice as abap.dec( 16, 2 )) as AvgTotalPrice,

      CurrencyCode
}
group by
  TravelId,
  AgencyId,
  CurrencyCode
