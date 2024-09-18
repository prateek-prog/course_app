import 'package:flutter/material.dart';
import 'package:course_app/theme/color.dart';
import 'package:course_app/widgets/custom_image.dart';

class RecommendItem extends StatelessWidget {
  const RecommendItem({
    super.key,
    required this.data,
    this.onTap,
  });

  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(10),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            CustomImage(
              data["image"],
              radius: 15,
              height: 80,
            ),
            const SizedBox(
              width: 10,
            ),
            _buildInfo()
          ],
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data["name"],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: AppColor.textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data["price"],
          style: const TextStyle(fontSize: 14, color: AppColor.textColor),
        ),
        const SizedBox(
          height: 15,
        ),
        _buildDurationAndRate()
      ],
    );
  }

  Widget _buildDurationAndRate() {
    return Row(
      children: [
        const Icon(
          Icons.schedule_rounded,
          color: AppColor.labelColor,
          size: 14,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          data["duration"],
          style: const TextStyle(
            fontSize: 12,
            color: AppColor.labelColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.star,
          color: AppColor.orange,
          size: 14,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          data["review"],
          style: const TextStyle(
            fontSize: 12,
            color: AppColor.labelColor,
          ),
        )
      ],
    );
  }
}
