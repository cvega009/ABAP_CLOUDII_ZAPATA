@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_08_LOG_C367_CV
  with parameters
    pFromUnit : abap.unit(3),
    ptoUnit   : abap.unit(3)

  as select from zqty_lgl
{
  key product  as ProductID,

      @Semantics.quantity.unitOfMeasure: 'OrignalUnit'
      quantity as OriginalQty,

      unit     as OrignalUnit

      //unit_conversion( quantity => quantity,
      //                 source
      //
      //)


}

where
  unit = $parameters.pFromUnit;
