import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goldapp/sizeconfig.dart';
import 'package:goldapp/style.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: AppBar().preferredSize.height,
            ),
            Container(
              width: SizeConfig.width * 0.9,
              decoration: BoxDecoration(
                color: Style.backgroundColor2.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: SizeConfig.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 20),
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 10,
                          blurRadius: 40,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Transaksi",
                          style: GoogleFonts.poppins(
                            color: Style.textColor1,
                            fontSize: SizeConfig.mFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            tranItem("assets/add.svg", "Beli Emas",
                                Style.primaryColor),
                            tranItem("assets/tran.svg", "Transfer Emas",
                                Style.chipColor),
                            tranItem("assets/down.svg", "Jual Emas",
                                Style.primaryColor.withOpacity(0.3)),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Marga Beli",
                                style: GoogleFonts.poppins(
                                  color: Style.chipColor,
                                  fontSize: SizeConfig.fontSize * 0.8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Rp 934.500",
                                style: GoogleFonts.poppins(
                                  color: Style.textColor1,
                                  fontSize: SizeConfig.mFontSize * 0.7,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Marga Jual",
                                style: GoogleFonts.poppins(
                                  color: Style.chipColor,
                                  fontSize: SizeConfig.fontSize * 0.8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Rp 899.000",
                                style: GoogleFonts.poppins(
                                  color: Style.textColor1,
                                  fontSize: SizeConfig.mFontSize * 0.7,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 78,
              width: SizeConfig.width * 0.9,
              decoration: BoxDecoration(
                color: Style.chipColor.withOpacity(0.6),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: SizeConfig.width * 0.28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 20,
                            spreadRadius: 8,
                          )
                        ]),
                    alignment: Alignment.center,
                    child: Text(
                      "5 tahun",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Style.textColor1,
                        fontSize: SizeConfig.fontSize,
                      ),
                    ),
                  ),
                  Text(
                    "1 tahun",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Style.textColor1,
                      fontSize: SizeConfig.fontSize,
                    ),
                  ),
                  Text(
                    "1 bulan",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Style.textColor1,
                      fontSize: SizeConfig.fontSize,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: SizeConfig.height * 0.36,
              width: SizeConfig.width * 0.9,
              child: BezierChart(
                bezierChartScale: BezierChartScale.YEARLY,
                selectedValue: 2021,
                fromDate: DateTime(2016),
                toDate: DateTime.now(),
                series: [
                  BezierLine(label: "m", data: [
                    DataPoint<DateTime>(value: 100000, xAxis: DateTime(2016)),
                    DataPoint<DateTime>(value: 500000, xAxis: DateTime(2017)),
                    DataPoint<DateTime>(value: 300000, xAxis: DateTime(2018)),
                    DataPoint<DateTime>(value: 800000, xAxis: DateTime(2019)),
                    DataPoint<DateTime>(value: 600000, xAxis: DateTime(2020)),
                    DataPoint<DateTime>(value: 1000000, xAxis: DateTime(2021)),
                  ])
                ],
                config: BezierChartConfig(
                    startYAxisFromNonZeroValue: false,
                    bubbleIndicatorColor: Colors.white.withOpacity(0.9),
                    footerHeight: 40,
                    xAxisTextStyle: GoogleFonts.poppins(
                        color: Style.chipColor, fontWeight: FontWeight.w600),
                    yAxisTextStyle: GoogleFonts.poppins(
                        color: Style.chipColor, fontWeight: FontWeight.w600),
                    verticalIndicatorStrokeWidth: 3.0,
                    verticalIndicatorColor: Style.primaryColor,
                    showVerticalIndicator: true,
                    verticalIndicatorFixedPosition: false,
                    displayYAxis: true,
                    stepsYAxis: 300000,
                    backgroundGradient: LinearGradient(
                      colors: [
                        Style.backgroundColor,
                        Style.backgroundColor.withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    snap: true),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget tranItem(String asset, String desc, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: color,
          child: SvgPicture.asset(
            asset,
            height: 30,
            width: 30,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          desc,
          style: GoogleFonts.poppins(
            color: Style.chipColor,
            fontSize: SizeConfig.fontSize * 0.7,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
