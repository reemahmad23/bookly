// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntityAdapter extends TypeAdapter<BookEntity> {
  @override
  final int typeId = 0;

  @override
  BookEntity read(BinaryReader reader) {
    return BookEntity(
      bookId: reader.read() as String,
      image: reader.read() as String?,
      title: reader.read() as String,
      authorName: reader.read() as String?,
      price: reader.read() as num?,
      rating: reader.read() as num?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntity obj) {
    writer.write(obj.bookId);
    writer.write(obj.image);
    writer.write(obj.title);
    writer.write(obj.authorName);
    writer.write(obj.price);
    writer.write(obj.rating);
  }
}
