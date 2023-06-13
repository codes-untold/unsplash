class PhotoResponseModel {
  PhotoResponseModel(
      {required this.id,
      required this.slug,
      required this.createdAt,
      required this.updatedAt,
      required this.promotedAt,
      required this.width,
      required this.height,
      required this.color,
      required this.blurHash,
      required this.description,
      required this.altDescription,
      required this.urls,
      required this.links,
      required this.likes,
      required this.likedByUser,
      required this.sponsorship,
      required this.topicSubmissions,
      required this.user,
      this.currentUserCollections = const []});
  late final String? id;
  late final String? slug;
  late final String? createdAt;
  late final String? updatedAt;
  late final String? promotedAt;
  late final int? width;
  late final int? height;
  late final String? color;
  late final String? blurHash;
  late final String? description;
  late final String? altDescription;
  late final List currentUserCollections;
  late final Urls? urls;
  late final Links? links;
  late final int? likes;
  late final bool? likedByUser;
  late final Sponsorship? sponsorship;
  late final TopicSubmissions? topicSubmissions;
  late final User? user;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhotoResponseModel &&
          runtimeType == other.runtimeType &&
          // compare all relevant properties for equality
          id == other.id &&
          slug == other.slug;

  @override
  int get hashCode => id.hashCode ^ slug.hashCode;

  PhotoResponseModel.fromJson(Map<String, dynamic> json) {
    try {
      id = json['id'];
      slug = json['slug'];
      createdAt = json['created_at'];
      updatedAt = json['updated_at'];
      promotedAt = json['promoted_at'];
      width = json['width'];
      height = json['height'];
      color = json['color'];
      currentUserCollections = json['current_user_collections'];
      blurHash = json['blur_hash'];
      description = json['description'];
      altDescription = json['alt_description'];
      urls = Urls.fromJson(json['urls'] ?? {});
      links = Links.fromJson(json['links'] ?? {});
      likes = json['likes'];
      likedByUser = json['liked_by_user'];
      user = User.fromJson(json['user']);
    } catch (e) {
      print(e);
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['promoted_at'] = promotedAt;
    _data['width'] = width;
    _data['height'] = height;
    _data['color'] = color;
    _data['current_user_collections'] = currentUserCollections;
    _data['blur_hash'] = blurHash;
    _data['description'] = description;
    _data['alt_description'] = altDescription;
    _data['urls'] = urls!.toJson();
    _data['links'] = links!.toJson();
    _data['likes'] = likes;
    _data['liked_by_user'] = likedByUser;
    _data['sponsorship'] = sponsorship == null ? {} : sponsorship!.toJson();
    _data['topic_submissions'] = topicSubmissions!.toJson();
    _data['user'] = user!.toJson();
    return _data;
  }
}

class Urls {
  Urls({
    required this.raw,
    required this.full,
    required this.regular,
    required this.small,
    required this.thumb,
    required this.smallS3,
  });
  late final String? raw;
  late final String? full;
  late final String? regular;
  late final String? small;
  late final String? thumb;
  late final String? smallS3;

  Urls.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    full = json['full'];
    regular = json['regular'];
    small = json['small'];
    thumb = json['thumb'];
    smallS3 = json['small_s3'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['raw'] = raw;
    _data['full'] = full;
    _data['regular'] = regular;
    _data['small'] = small;
    _data['thumb'] = thumb;
    _data['small_s3'] = smallS3;
    return _data;
  }
}

class Links {
  Links({
    required this.self,
    required this.html,
    required this.download,
    required this.downloadLocation,
  });
  late final String? self;
  late final String? html;
  late final String? download;
  late final String? downloadLocation;

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    download = json['download'];
    downloadLocation = json['download_location'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['self'] = self;
    _data['html'] = html;
    _data['download'] = download;
    _data['download_location'] = downloadLocation;
    return _data;
  }
}

class UserLinks {
  UserLinks(
      {required this.self,
      required this.html,
      required this.photos,
      required this.likes,
      required this.portfolio,
      required this.followers,
      required this.following});
  late final String? self;
  late final String? html;
  late final String? photos;
  late final String? likes;
  late final String? portfolio;
  late final String? followers;
  late final String? following;

  UserLinks.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    html = json['html'];
    photos = json['download'];
    likes = json['download_location'];
    portfolio = json['portfolio'];
    followers = json['followers'];
    following = json['following'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['self'] = self;
    _data['html'] = html;
    _data['download'] = photos;
    _data['download_location'] = likes;
    return _data;
  }
}

class Sponsorship {
  Sponsorship({
    required this.tagline,
    required this.taglineUrl,
    required this.sponsor,
  });
  late final String? tagline;
  late final String? taglineUrl;
  late final Sponsor? sponsor;

  Sponsorship.fromJson(Map<String, dynamic> json) {
    tagline = json['tagline'];
    taglineUrl = json['tagline_url'];
    sponsor = Sponsor.fromJson(json['sponsor']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['tagline'] = tagline;
    _data['tagline_url'] = taglineUrl;
    _data['sponsor'] = sponsor!.toJson();
    return _data;
  }
}

class Sponsor {
  Sponsor({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
    required this.links,
    required this.profileImage,
    required this.instagramUsername,
    required this.totalCollections,
    required this.totalLikes,
    required this.totalPhotos,
    required this.acceptedTos,
    required this.forHire,
    required this.social,
  });
  late final String? id;
  late final String? updatedAt;
  late final String? username;
  late final String? name;
  late final String? firstName;
  late final String? lastName;
  late final String? twitterUsername;
  late final String? portfolioUrl;
  late final String? bio;
  late final String? location;
  late final UserLinks? links;
  late final ProfileImage profileImage;
  late final String? instagramUsername;
  late final int? totalCollections;
  late final int? totalLikes;
  late final int? totalPhotos;
  late final bool? acceptedTos;
  late final bool? forHire;
  late final Social social;

  Sponsor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    portfolioUrl = json['portfolio_url'];
    bio = json['bio'];
    location = json['location'];
    links = UserLinks.fromJson(json['links']);
    profileImage = ProfileImage.fromJson(json['profile_image'] ?? {});
    instagramUsername = json['instagram_username'];
    totalCollections = json['total_collections'];
    totalLikes = json['total_likes'];
    totalPhotos = json['total_photos'];
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['updated_at'] = updatedAt;
    _data['username'] = username;
    _data['name'] = name;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['twitter_username'] = twitterUsername;
    _data['portfolio_url'] = portfolioUrl;
    _data['bio'] = bio;
    _data['location'] = location;
    _data['links'] = links!.toJson();
    _data['profile_image'] = profileImage.toJson();
    _data['instagram_username'] = instagramUsername;
    _data['total_collections'] = totalCollections;
    _data['total_likes'] = totalLikes;
    _data['total_photos'] = totalPhotos;
    _data['accepted_tos'] = acceptedTos;
    _data['for_hire'] = forHire;
    _data['social'] = social.toJson();
    return _data;
  }
}

class ProfileImage {
  ProfileImage({
    required this.small,
    required this.medium,
    required this.large,
  });
  late final String? small;
  late final String? medium;
  late final String? large;

  ProfileImage.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['small'] = small;
    _data['medium'] = medium;
    _data['large'] = large;
    return _data;
  }
}

class Social {
  Social({
    required this.instagramUsername,
    required this.portfolioUrl,
    required this.twitterUsername,
    required this.paypalEmail,
  });
  late final String? instagramUsername;
  late final String? portfolioUrl;
  late final String? twitterUsername;
  late final String? paypalEmail;

  Social.fromJson(Map<String, dynamic> json) {
    instagramUsername = json['instagram_username'];
    portfolioUrl = json['portfolio_url'];
    twitterUsername = json['twitter_username'];
    paypalEmail = json['paypal_email'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['instagram_username'] = instagramUsername;
    _data['portfolio_url'] = portfolioUrl;
    _data['twitter_username'] = twitterUsername;
    _data['paypal_email'] = paypalEmail;
    return _data;
  }
}

class TopicSubmissions {
  TopicSubmissions();

  TopicSubmissions.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.updatedAt,
    required this.username,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.twitterUsername,
    required this.portfolioUrl,
    required this.bio,
    required this.location,
    required this.links,
    required this.profileImage,
    required this.instagramUsername,
    required this.totalCollections,
    required this.totalLikes,
    required this.totalPhotos,
    required this.acceptedTos,
    required this.forHire,
    required this.social,
  });
  late final String? id;
  late final String? updatedAt;
  late final String? username;
  late final String? name;
  late final String? firstName;
  late final String? lastName;
  late final String? twitterUsername;
  late final String? portfolioUrl;
  late final String? bio;
  late final String? location;
  late final UserLinks? links;
  late final ProfileImage? profileImage;
  late final String? instagramUsername;
  late final int? totalCollections;
  late final int? totalLikes;
  late final int? totalPhotos;
  late final bool? acceptedTos;
  late final bool? forHire;
  late final Social? social;

  User.fromJson(Map<String, dynamic> json) {
    try {
      id = json['id'];
      updatedAt = json['updated_at'];
      username = json['username'];
      name = json['name'];
      firstName = json['first_name'];
      lastName = json['lastName'];
      twitterUsername = json['twitter_username'];
      portfolioUrl = json['portfolio_url'];
      bio = json['bio'];
      location = json['location'];
      links = UserLinks.fromJson(json['links'] ?? {});
      profileImage = ProfileImage.fromJson(json['profile_image'] ?? {});
      instagramUsername = json['instagram_username'];
      totalCollections = json['total_collections'];
      totalLikes = json['total_likes'];
      totalPhotos = json['total_photos'];
      acceptedTos = json['accepted_tos'];
      forHire = json['for_hire'];
      social = Social.fromJson(json['social'] ?? {});
    } catch (e) {
      print(e);
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['updated_at'] = updatedAt;
    _data['username'] = username;
    _data['name'] = name;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['twitter_username'] = twitterUsername;
    _data['portfolio_url'] = portfolioUrl;
    _data['bio'] = bio;
    _data['location'] = location;
    _data['links'] = links!.toJson();
    _data['profile_image'] = profileImage!.toJson();
    _data['instagram_username'] = instagramUsername;
    _data['total_collections'] = totalCollections;
    _data['total_likes'] = totalLikes;
    _data['total_photos'] = totalPhotos;
    _data['accepted_tos'] = acceptedTos;
    _data['for_hire'] = forHire;
    _data['social'] = social!.toJson();
    return _data;
  }
}
