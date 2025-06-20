namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
  bookentity : Composition of many Chapters on bookentity.chaptersEntity = $self;
}
entity Chapters {
  key ID : Integer;
  title  : String;
  stock  : Integer;
  chaptersEntity : Association to Books on chaptersEntity.ID = ID;
}
