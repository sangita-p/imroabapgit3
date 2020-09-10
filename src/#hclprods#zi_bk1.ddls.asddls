@AbapCatalog.sqlViewName: '/HCLPRODS/ZI_B1V'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view on ZTBK1 table'
@Search.searchable : true

@UI:
{
 headerInfo:
  {
    typeName: 'Booking',
    typeNamePlural: 'Bookings',
    title: { type: #STANDARD, value: 'Booking' }
  }
 }
define root view /HCLPRODS/ZI_BK1 
as select from /hclprods/ztbk1 as Booking {
     @UI: {
          lineItem: [ { position: 10, importance: #HIGH, label: 'Booking ID' } ],
          identification:[ { position: 10, label: 'Booking ID' } ]
      }
  key booking            as Booking,

      @UI: {
         lineItem: [ { position: 20, label: 'Customer Name', importance: #HIGH } ],
         identification:[ { position: 10, label: 'Customer Name' } ]
       }
      @Search.defaultSearchElement: true
      customername       as CustomerName,
      numberofpassengers as NumberOfPassengers,
      emailaddress       as EmailAddress,
      country,

      @UI: {
          lineItem: [ { position: 60, importance: #HIGH, label: 'Booking Date' } ],
          identification:[ { position: 60, label: 'Booking Date' } ]
       }
      dateofbooking      as DateOfBooking,

      @UI: {
         lineItem: [ { position: 70, importance: #HIGH, label: 'Traveling Date' } ],
         identification:[ { position: 70, label: 'Traveling Date' } ]
      }
      dateoftravel       as DateOfTravel,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cost,
      @Semantics.currencyCode: true
      currencycode       as CurrencyCode,
      lastchangedat      as LastChangedAt
}
