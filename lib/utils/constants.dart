import 'package:unsplash/models/photo_response_model.dart';

const String apiKey = 'p1ayN6knFjbm6aqFv-3jvYeJjC35b6REMhI2SNIkhps';

class PhotoDataTestResponse {
  static final photoData = [
    PhotoResponseModel(
        id: "N_Zc_G7wToY",
        slug: "N_Zc_G7wToY",
        createdAt: "2023-06-09T17:44:39Z",
        updatedAt: "2023-06-10T13:32:01Z",
        promotedAt: "2023-06-10T15:48:01Z",
        width: 3888,
        height: 5184,
        color: "#f3d9a6",
        blurHash: "LeOy2%Nxxtxa~U%1NHWV^*%1R+az",
        description: null,
        altDescription: "a group of people standing on top of a pier",
        urls: Urls(
            raw:
                "https://images.unsplash.com/photo-1686332331143-7e743512e400?ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw&ixlib=rb-4.0.3",
            full:
                "https://images.unsplash.com/photo-1686332331143-7e743512e400?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw&ixlib=rb-4.0.3&q=85",
            regular:
                "https://images.unsplash.com/photo-1686332331143-7e743512e400?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw&ixlib=rb-4.0.3&q=80&w=1080",
            small:
                "https://images.unsplash.com/photo-1686332331143-7e743512e400?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw&ixlib=rb-4.0.3&q=80&w=400",
            thumb:
                "https://images.unsplash.com/photo-1686332331143-7e743512e400?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw&ixlib=rb-4.0.3&q=80&w=200",
            smallS3:
                "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1686332331143-7e743512e400"),
        links: Links(
            self: "https://api.unsplash.com/photos/N_Zc_G7wToY",
            html: "https://unsplash.com/photos/N_Zc_G7wToY",
            download:
                "https://unsplash.com/photos/N_Zc_G7wToY/download?ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw",
            downloadLocation:
                "https://api.unsplash.com/photos/N_Zc_G7wToY/download?ixid=M3w0NTkyNjN8MHwxfGFsbHwyfHx8fHx8Mnx8MTY4NjQyMjEzNXw"),
        likes: 12,
        likedByUser: false,
        sponsorship: null,
        topicSubmissions: TopicSubmissions(),
        user: User(
            id: "rXwTWwCKpfk",
            updatedAt: "2023-06-10T15:48:01Z",
            username: "nimbus_vulpis",
            name: "Rafael Garcin",
            firstName: "Rafael",
            lastName: "Garcin",
            twitterUsername: "NimbusVulpis",
            portfolioUrl: "https://rafael-garcin.com/",
            location: "La Rochelle, France",
            bio: "Look at the sky above.",
            links: UserLinks(
                self: "https://api.unsplash.com/users/nimbus_vulpis",
                html: "https://unsplash.com/@nimbus_vulpis",
                photos: "https://api.unsplash.com/users/nimbus_vulpis/photos",
                likes: "https://api.unsplash.com/users/nimbus_vulpis/likes",
                portfolio:
                    "https://api.unsplash.com/users/nimbus_vulpis/portfolio",
                following:
                    "https://api.unsplash.com/users/nimbus_vulpis/following",
                followers:
                    "https://api.unsplash.com/users/nimbus_vulpis/followers"),
            profileImage: ProfileImage(
                small:
                    "https://images.unsplash.com/profile-1557265728470-d24c812f075e?ixlib=rb-4.0.3&crop=faces&fit=crop&w=32&h=32",
                medium:
                    "https://images.unsplash.com/profile-1557265728470-d24c812f075e?ixlib=rb-4.0.3&crop=faces&fit=crop&w=64&h=64",
                large:
                    "https://images.unsplash.com/profile-1557265728470-d24c812f075e?ixlib=rb-4.0.3&crop=faces&fit=crop&w=128&h=128"),
            instagramUsername: "NimbusVulpis",
            totalCollections: 0,
            totalLikes: 5,
            totalPhotos: 1178,
            acceptedTos: true,
            forHire: true,
            social: Social(
                instagramUsername: "NimbusVulpis",
                portfolioUrl: "https://rafael-garcin.com/",
                twitterUsername: "NimbusVulpis",
                paypalEmail: null)))
  ];
}
