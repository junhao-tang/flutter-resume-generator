import 'package:flutter/material.dart';

class HudWidget extends StatelessWidget {
  final Widget child;
  final Map<IconData, VoidCallback> callbackMap;

  const HudWidget({super.key, required this.callbackMap, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        child,
        Positioned(
          bottom: 20,
          right: 20,
          child: Column(
            children: callbackMap.entries
                .map<_ButtonWidget>(
                  (e) => _ButtonWidget(
                    callback: e.value,
                    iconData: e.key,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  final VoidCallback callback;
  final IconData iconData;

  const _ButtonWidget({required this.callback, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      ),
      child: IconButton(
        icon: Icon(
          iconData,
          color: Colors.white,
        ),
        onPressed: callback,
      ),
    );
  }
}
