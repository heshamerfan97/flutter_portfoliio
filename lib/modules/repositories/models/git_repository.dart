class GitRepository {
  final String title, titleAr, descriptionAr, description, image, url;

  GitRepository({
    required this.title,
    required this.titleAr,
    required this.descriptionAr,
    required this.description,
    required this.image,
    required this.url,
  });

  factory GitRepository.fromJson(Map<String, dynamic> json) => GitRepository(
      title: json['title'],
      titleAr: json['title_ar'],
      description: json['description'],
      descriptionAr: json['description_ar'],
      image: json['image'],
      url: json['url'],
    );

  Map<String, dynamic> toJson() => {
    'title': title,
    'title_ar': titleAr,
    'description': description,
    'description_ar': descriptionAr,
    'image': image,
    'url': url,
  };
}