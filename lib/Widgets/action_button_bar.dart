import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";


class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ActionButton(
          label: "send",
          icon: Iconsax.send,
        ),
        ActionButton(
          label: "Deposit",
          icon: Iconsax.add,
        ),
        ActionButton(
          label: "Earn",
          icon: Iconsax.document,
        ),
        ActionButton(
          label: "Swap",
          icon: Iconsax.more,
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 62,
          decoration: BoxDecoration(
            color: Color(0xFF2A2A2A),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFF3A3A3A),
              width: 1,
            ),
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
