class Quote
{
  final String quote;
  final String category;
  final String author;

  Quote({
   required this.author,
   required this.category,
   required this.quote
});

  factory Quote.fromMap({required Map data}){
    return Quote(author: data['author'], category: data['category'], quote: data['quote']);
  }

}
