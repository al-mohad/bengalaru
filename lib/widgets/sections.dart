import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> showingSections(Map<String, dynamic> data) {
  return List.generate(
    data.length,
    (i) {
      final isTouched = i == 0;
      // final isTouched = i == touchedIndex;
      final opacity = isTouched ? 1.0 : 0.6;

      const color0 = Color(0xff0293ee);
      const color1 = Color(0xfff8b250);
      const color2 = Color(0xff845bef);
      const color3 = Color(0xff13d38e);

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: color0.withOpacity(opacity),
            value: double.parse(data.values.elementAt(i).toString()),
            title: data.keys.elementAt(i).toString(),
            radius: 80,
            titleStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff044d7c),
            ),
            titlePositionPercentageOffset: 0.55,
            borderSide: isTouched
                ? const BorderSide(color: color0, width: 6)
                : BorderSide(color: color0.withOpacity(0)),
          );
        case 1:
          return PieChartSectionData(
            color: color1.withOpacity(opacity),
            value: double.parse(data.values.elementAt(i).toString()),
            title: data.keys.elementAt(i).toString(),
            radius: 65,
            titleStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff90672d),
            ),
            titlePositionPercentageOffset: 0.55,
            borderSide: isTouched
                ? const BorderSide(color: color1, width: 6)
                : BorderSide(color: color2.withOpacity(0)),
          );
        case 2:
          return PieChartSectionData(
            color: color2.withOpacity(opacity),
            value: double.parse(data.values.elementAt(i).toString()),
            title: data.keys.elementAt(i).toString(),
            radius: 60,
            titleStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff4c3788),
            ),
            titlePositionPercentageOffset: 0.6,
            borderSide: isTouched
                ? const BorderSide(color: color2, width: 6)
                : BorderSide(color: color2.withOpacity(0)),
          );

        default:
          return PieChartSectionData(
            color: color1.withOpacity(opacity),
            value: double.parse(data.values.elementAt(i).toString()),
            title: data.keys.elementAt(i).toString(),
            radius: 60,
            titleStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color3,
            ),
            titlePositionPercentageOffset: 0.6,
            borderSide: isTouched
                ? const BorderSide(color: color2, width: 6)
                : BorderSide(color: color2.withOpacity(0)),
          );
      }
    },
  );
}
