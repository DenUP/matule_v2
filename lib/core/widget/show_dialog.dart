import 'package:flutter/material.dart';
import 'package:matule_v2/core/app_color.dart';

void showDialogMessage(BuildContext context, String title, String message) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(fontSize: 16, color: AppColor.text),
          ),
          content: Text(
            textAlign: TextAlign.center,
            message,
            style: const TextStyle(fontSize: 16, color: AppColor.subTextDark),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 24,
                  width: MediaQuery.of(context).size.width / 3.6,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: AppColor.background,
                          backgroundColor: AppColor.subTextLight,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              side: BorderSide.none)),
                      child: const Text(
                        'Отмена',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      )),
                ),
                SizedBox(
                  height: 24,
                  width: MediaQuery.of(context).size.width / 3.6,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: AppColor.background,
                          backgroundColor: AppColor.accent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              side: BorderSide.none)),
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            )
          ],
        );
      });
}
