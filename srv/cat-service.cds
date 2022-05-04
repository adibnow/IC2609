using my.finance as my from '../db/data-model';

service CatalogService {
    @readonly entity Transaction as projection on my.Transaction;
    @readonly entity Category as projection on my.Category;
    @readonly entity Tag as projection on my.Tag;
    @readonly entity TransactionTag as projection on my.TransactionTag;
}