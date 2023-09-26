import 'package:flutter/material.dart';
import 'package:racecourse/model/competition.dart';

class DetailPage extends StatelessWidget {
  final CompetitionEvent competition;

  const DetailPage({Key? key, required this.competition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(competition: competition);
        } else {
          return DetailMobilePage(competition: competition);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final CompetitionEvent competition;

  const DetailMobilePage({Key? key, required this.competition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  competition.imageAsset,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                competition.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                competition.category,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.report),
                      const SizedBox(height: 8.0),
                      Text("Status"),
                      const SizedBox(height: 3.0),
                      Text(
                        competition.status,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.fmd_good),
                      const SizedBox(height: 8.0),
                      Text("Location"),
                      const SizedBox(height: 3.0),
                      Text(
                        competition.location,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.roofing),
                      const SizedBox(height: 8.0),
                      Text("Organizer"),
                      const SizedBox(height: 3.0),
                      Text(
                        competition.organizer,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text("Open Date"),
                      const SizedBox(height: 3.0),
                      Text(
                        competition.openDays,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_month),
                      const SizedBox(height: 8.0),
                      Text("Closed Date"),
                      const SizedBox(height: 3.0),
                      Text(
                        competition.closedDays,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8.0),
                      Text("Price"),
                      const SizedBox(height: 3.0),
                      Text(
                        competition.ticketPrice,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                competition.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final CompetitionEvent competition;

  const DetailWebPage({Key? key, required this.competition}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.competition.title,
                    style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.asset(widget.competition.imageAsset),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text(
                                  widget.competition.category,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: <Widget>[
                                                const Icon(Icons.report),
                                                const SizedBox(width: 8.0),
                                                Text(
                                                  widget.competition.status,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8.0),
                                        Row(
                                          children: <Widget>[
                                            const Icon(Icons.roofing),
                                            const SizedBox(width: 8.0),
                                            Text(
                                              widget.competition.organizer,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8.0),
                                        Row(
                                          children: <Widget>[
                                            const Icon(Icons.fmd_good),
                                            const SizedBox(width: 8.0),
                                            Text(
                                              widget.competition.location,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  widget.competition.openDays,
                                                ),
                                                const SizedBox(width: 8.0),
                                                const Icon(
                                                    Icons.calendar_today),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8.0),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              widget.competition.closedDays,
                                            ),
                                            const SizedBox(width: 8.0),
                                            const Icon(Icons.access_time),
                                          ],
                                        ),
                                        const SizedBox(height: 8.0),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              widget.competition.ticketPrice,
                                            ),
                                            const SizedBox(width: 8.0),
                                            const Icon(Icons.monetization_on),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Text(
                                    widget.competition.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Oxygen',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
