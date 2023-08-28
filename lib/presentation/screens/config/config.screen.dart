import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:propresenter_api/propresenter_api.dart';
import 'package:propresenter_remote/presentation/screens/config/config.provider.dart';

const homeMargin = EdgeInsets.only(left: 24, right: 24, bottom: 30);

class ConfigScreen extends ConsumerStatefulWidget {
  const ConfigScreen({super.key});
  @override
  ConsumerState<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends ConsumerState<ConfigScreen> {
  late ProApiClient client;

  @override
  void initState() {
    client = ProApiClient(
      ProSettings(
        host: '',
        port: 0,
        remotePass: '',
        sdPass: '',
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController hostController = TextEditingController();
    TextEditingController portController = TextEditingController();
    TextEditingController remotePassController = TextEditingController();
    TextEditingController sdPassController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Current Host: ${client.host}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('IP Address'),
              TextFormField(
                controller: hostController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'IP Address',
                ),
              ),
              const Text('Port'),
              TextFormField(
                controller: portController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Port',
                ),
              ),
              const Text('Remote Password'),
              TextFormField(
                controller: remotePassController,
                autocorrect: false,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Remote Password',
                ),
              ),
              const Text('Stage Display Password'),
              TextFormField(
                controller: sdPassController,
                autocorrect: false,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Stage Display Password',
                ),
              ),
              const SizedBox(height: 24,),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ProSettings settings = ProSettings(
                      host: hostController.text,
                      port: int.parse(portController.text),
                      remotePass: remotePassController.text,
                      sdPass: sdPassController.text,
                    );
                    ref.read(configProvider.notifier).setConfig(settings);
                    setState(() {
                      client = ref.watch(configProvider.notifier).getConfig();
                    });
                  },
                  child: const Text('Save'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  hostValidator() {
    return true;
  }

  portValidator() {
    return true;
  }

  remotePassValidator() {
    return true;
  }

  sdPassValidator() {
    return true;
  }

 
}
