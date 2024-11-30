enum DeQuien { mio, ella } // Enumeración para saber de quién es el mensaje

class Mensaje {
  final String text; // Texto que me enviará
  final String? imageUrl; // Meme que enviará. Es opcional
  final DeQuien deQuien;

  Mensaje({
    required this.text,
    this.imageUrl,
    required this.deQuien,
  }); // Constructor
}