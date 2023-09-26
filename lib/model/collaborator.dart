class Collaborators {
  String name;
  String email;
  String numberTelp;
  String imageAsset;
  List<String> skills;

  Collaborators({
    required this.name,
    required this.email,
    required this.numberTelp,
    required this.imageAsset,
    required this.skills,
  });
}

var CollaboratorsList = [
  Collaborators(
    name: 'Alfian',
    email: 'alfian@gmail.com',
    imageAsset: 'images/male-1.png',
    skills: ["Web Developer"],
    numberTelp: "083812123344",
  ),
  Collaborators(
    name: 'Vito',
    email: 'vito@gmail.com',
    imageAsset: 'images/male-2.png',
    skills: ["Web Developer", "Android Developer"],
    numberTelp: "0838111111111",
  ),
  Collaborators(
    name: 'Anggoro',
    email: 'anggoro@gmail.com',
    imageAsset: 'images/male-3.png',
    skills: ["UI/UX Design"],
    numberTelp: "08382323232323",
  ),
  Collaborators(
    name: 'Amelia',
    email: 'amelia@gmail.com',
    imageAsset: 'images/female-1.png',
    skills: ["IOS Developer", "Android Developer", "Web Developer"],
    numberTelp: "08384141412122",
  ),
  Collaborators(
    name: 'Tria',
    email: 'tria@gmail.com',
    imageAsset: 'images/female-2.png',
    skills: ["Machine Learning Developer"],
    numberTelp: "08383212222114",
  ),
];
