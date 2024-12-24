import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CustomErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const CustomErrorWidget({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
          size: 48,
        ),
        SizedBox(height: 16),
        Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.red),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: onRetry,
          child: Text("Retry"),)
      ],
    );
  }
}
