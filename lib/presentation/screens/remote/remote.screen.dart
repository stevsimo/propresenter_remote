import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:propresenter_api/propresenter_api.dart';
import 'package:propresenter_remote/presentation/screens/config/config.provider.dart';
import 'package:keep_screen_on/keep_screen_on.dart';

const homeMargin = EdgeInsets.only(left: 24, right: 24, bottom: 30);

class RemoteScreen extends ConsumerStatefulWidget {
  const RemoteScreen({super.key});
  @override
  ConsumerState<RemoteScreen> createState() => _RemoteScreenState();
}

class _RemoteScreenState extends ConsumerState<RemoteScreen> {

@override
  void initState() {
    KeepScreenOn.turnOn();
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    final ProApiClient client = ref.watch(configProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Host: ${client.host}'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // client.mediaThumbnailGet()
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () => previousSlide(client), child: const Expanded(child: Icon(Icons.skip_previous, size: 100,),)),
                  ElevatedButton(onPressed: () => nextSlide(client), child: const Expanded( child: Icon(Icons.skip_next, size: 100),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  nextSlide(ProApiClient client) {
    client.triggerNext();
    
  }

  previousSlide(ProApiClient client) {
    client.triggerPrevious();
  }

  @override
  void dispose() {
    KeepScreenOn.turnOff();
    super.dispose();
  }

}
