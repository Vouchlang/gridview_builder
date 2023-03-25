// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// import 'package:fwfh_chewie/fwfh_chewie.dart';

class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.videoUrl,
  });
}

class Playlist {
  final String id;
  final String title;
  final String description;
  final List<Video> videos;

  Playlist({
    required this.id,
    required this.title,
    required this.description,
    required this.videos,
  });
}

// class PlaylistListWidget extends StatelessWidget {
//   final List<Playlist> playlists;

//   const PlaylistListWidget({required this.playlists});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: playlists.length,
//       itemBuilder: (context, index) {
//         final playlist = playlists[index];

//         return ListTile(
//           title: Text(playlist.title),
//           subtitle: Text(playlist.description),
//           onTap: () {
//             // TODO: navigate to playlist screen
//           },
//         );
//       },
//     );
//   }
// }

// class PlaylistWidget extends StatelessWidget {
//   final Playlist playlist;

//   const PlaylistWidget({required this.playlist});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(playlist.title),
//       ),
//       body: ListView.builder(
//         itemCount: playlist.videos.length,
//         itemBuilder: (context, index) {
//           final video = playlist.videos[index];

//           return ListTile(
//             title: Text(video.title),
//             subtitle: Text(video.description),
//             leading: Image.network(video.thumbnailUrl),
//             onTap: () {
//               // TODO: navigate to video screen
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class PlaylistListWidget extends StatelessWidget {
//   final List<Playlist> playlists;

//   const PlaylistListWidget({required this.playlists});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: playlists.length,
//       itemBuilder: (context, index) {
//         final playlist = playlists[index];

//         return ListTile(
//           title: Text(playlist.title),
//           subtitle: Text(playlist.description),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => PlaylistWidget(playlist: playlist),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// class VideoWidget extends StatelessWidget {
//   final Video video;

//   const VideoWidget({required this.video});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(video.title),
//         ),
//         body: Chewie(
//             controller: ChewieController(
//                 videoPlayerController:
//                     VideoPlayerController.network(video.videoUrl),
//                 autoPlay: true,
//                 looping: true)));
//   }
// }
