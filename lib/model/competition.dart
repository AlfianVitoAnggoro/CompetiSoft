class CompetitionEvent {
  String title;
  String organizer;
  String location;
  String description;
  String openDays;
  String closedDays;
  String ticketPrice;
  String imageAsset;
  String category;
  String status;

  CompetitionEvent({
    required this.title,
    required this.organizer,
    required this.location,
    required this.description,
    required this.openDays,
    required this.closedDays,
    required this.ticketPrice,
    required this.imageAsset,
    required this.category,
    required this.status,
  });
}

var competitionEventList = [
  CompetitionEvent(
      title: 'HACKDEV',
      organizer: 'HIMTIKA',
      location: 'Karawang',
      description:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolores eos doloremque dignissimos architecto ipsum repudiandae labore, eum sequi vitae expedita ullam saepe aliquid ratione autem minima exercitationem laborum repellendus dolor, iure fuga eius quidem. Repellendus praesentium, voluptas a ex temporibus expedita? Doloremque commodi qui atque, quisquam placeat quaerat explicabo at!',
      openDays: '25-09-2023',
      closedDays: '30-09-2023',
      ticketPrice: 'Rp 25000',
      imageAsset: 'images/competition-1.jpg',
      category: "Web Development",
      status: "Open"),
  CompetitionEvent(
      title: 'HACKDEV',
      organizer: 'HIMTIKA',
      location: 'Karawang',
      description:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolores eos doloremque dignissimos architecto ipsum repudiandae labore, eum sequi vitae expedita ullam saepe aliquid ratione autem minima exercitationem laborum repellendus dolor, iure fuga eius quidem. Repellendus praesentium, voluptas a ex temporibus expedita? Doloremque commodi qui atque, quisquam placeat quaerat explicabo at!',
      openDays: '25-09-2023',
      closedDays: '30-09-2023',
      ticketPrice: 'Rp 15000',
      imageAsset: 'images/competition-2.jpg',
      category: "UI / UX",
      status: "Open"),
  CompetitionEvent(
      title: 'HACKATON',
      organizer: 'Code4Nation',
      location: 'Bandung',
      description:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolores eos doloremque dignissimos architecto ipsum repudiandae labore, eum sequi vitae expedita ullam saepe aliquid ratione autem minima exercitationem laborum repellendus dolor, iure fuga eius quidem. Repellendus praesentium, voluptas a ex temporibus expedita? Doloremque commodi qui atque, quisquam placeat quaerat explicabo at!',
      openDays: '10-10-2023',
      closedDays: '30-10-2023',
      ticketPrice: 'Rp 0',
      imageAsset: 'images/competition-3.jpg',
      category: "Web Development",
      status: "Closed"),
  CompetitionEvent(
      title: 'HACKATON',
      organizer: 'Code4Nation',
      location: 'Bandung',
      description:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolores eos doloremque dignissimos architecto ipsum repudiandae labore, eum sequi vitae expedita ullam saepe aliquid ratione autem minima exercitationem laborum repellendus dolor, iure fuga eius quidem. Repellendus praesentium, voluptas a ex temporibus expedita? Doloremque commodi qui atque, quisquam placeat quaerat explicabo at!',
      openDays: '10-10-2023',
      closedDays: '30-10-2023',
      ticketPrice: 'Rp 0',
      imageAsset: 'images/competition-4.jpg',
      category: "Flutter Development",
      status: "Closed"),
  CompetitionEvent(
      title: 'HACKATON',
      organizer: 'Code4Nation',
      location: 'Bandung',
      description:
          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolores eos doloremque dignissimos architecto ipsum repudiandae labore, eum sequi vitae expedita ullam saepe aliquid ratione autem minima exercitationem laborum repellendus dolor, iure fuga eius quidem. Repellendus praesentium, voluptas a ex temporibus expedita? Doloremque commodi qui atque, quisquam placeat quaerat explicabo at!',
      openDays: '10-10-2023',
      closedDays: '30-10-2023',
      ticketPrice: 'Rp 0',
      imageAsset: 'images/competition-4.jpg',
      category: "Android Development",
      status: "Closed"),
];
