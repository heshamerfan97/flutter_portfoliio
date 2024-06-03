class Project {
  final String title, titleAr, descriptionAr, description, image;
  final String? androidUrl, iosUrl;

  const Project({
    required this.title,
    required this.titleAr,
    required this.description,
    required this.descriptionAr,
    required this.image,
    this.androidUrl,
    this.iosUrl,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        title: json['title'],
        titleAr: json['title_ar'],
        description: json['description'],
        descriptionAr: json['description_ar'],
        image: json['image'],
        androidUrl: json['android_url'],
        iosUrl: json['ios_url'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'title_ar': titleAr,
        'description': description,
        'description_ar': descriptionAr,
        'image': image,
        'android_url': androidUrl,
        'ios_url': iosUrl,
      };
}
