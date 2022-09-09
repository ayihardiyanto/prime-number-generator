import 'package:flutter/material.dart';
import 'package:frisia_application/view/widgets/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

const String _avatarUrl =
    'https://www.rd.com/wp-content/uploads/2018/12/50-Funny-Animal-Pictures-That-You-Need-In-Your-Life-12.jpg?fit=700,467';
const String _linkedInImage =
    'https://yt3.ggpht.com/9XmuxL_LL7CxAOOlbBgTnJIo2uHpoLKHhWzlPt7O49ULQmvBSJlxk1RpX3pJ8jkRBkD6p9BIRg=s900-c-k-c0x00ffffff-no-rj';
const String _githubImage =
    'https://play-lh.googleusercontent.com/PCpXdqvUWfCW1mXhH1Y_98yBpgsWxuTSTofy3NGMo9yBTATDyzVkqU580bfSln50bFU';
const String _linkedInLink =
    'https://www.linkedin.com/in/ayi-hardiyanto-986b88139/';
const String _gitHubLink = 'https://github.com/ayihardiyanto';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 120,
            foregroundImage: NetworkImage(_avatarUrl),
          ),
          const SizedBox(height: 24),
          Text(
            'Ayi Hardiyanto',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 8),
          const SelectableText('ayihardyan@gmail.com'),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: SimpleButton(
              onTap: () {
                launchUrlString(_linkedInLink);
              },
              backgroundColor: Colors.blue,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    _linkedInImage,
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Linked In',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                )
              ]),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: SimpleButton(
              onTap: () {
                launchUrlString(_gitHubLink);
              },
              backgroundColor: Colors.black,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    _githubImage,
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'GitHub',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
