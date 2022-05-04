namespace my.finance;

using {
    cuid,
    managed,
    Country,
    User,
    Language,
} from '@sap/cds/common';

entity Transaction : cuid, managed {
  description  : localized String(111);
  type : String(10);
  amount : Decimal;
  transactiondate : Timestamp;
  Category : Association to one Category;
  Tags : Composition of many TransactionTag on Tags.Transaction = $self;
  comment : String(1000);
}

entity TransactionTag : managed{
    Transaction : Association to Transaction;
    Tag : Association to Tag;
}


entity Category : cuid, managed {
    name :  localized String(111);
    description  : localized String(1000);
}

entity Tag : cuid, managed {
    name :  localized String(111);
    description  : localized String(1000);
}