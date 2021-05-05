import 'package:flutter/material.dart';
import 'package:goldapp/sizeconfig.dart';
import 'package:goldapp/style.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: AppBar().preferredSize.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png", height: 40, width: 40),
              SizedBox(
                width: 10,
              ),
              Text(
                "Maskuh",
                style: GoogleFonts.poppins(
                  color: Style.textColor1.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Spacer(flex: 3),
          Text(
            "Selmat\nDatang, Romili!",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Style.textColor1,
              fontWeight: FontWeight.w500,
              fontSize: SizeConfig.titleSize,
            ),
          ),
          Spacer(flex: 3),
          Container(
            height: SizeConfig.height * 0.21,
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.height * 0.18,
                  width: SizeConfig.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("assets/banner.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Emas Saya",
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: SizeConfig.fontSize,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rp 14,600.000",
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: SizeConfig.mFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: SizeConfig.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 64,
                            width: SizeConfig.width * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Kentungan",
                                  style: GoogleFonts.poppins(
                                    color: Style.textColor1.withOpacity(0.5),
                                    fontSize: SizeConfig.fontSize,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Rp 2,340.500",
                                  style: GoogleFonts.poppins(
                                    color: Style.primaryColor,
                                    fontSize: SizeConfig.fontSize,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(flex: 3),
          Container(
            height: 60,
            width: SizeConfig.width * 0.7,
            decoration: BoxDecoration(
              color: Style.chipColor,
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,
            child: Text(
              "Lihat grafik harga live",
              style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.7),
                fontSize: SizeConfig.fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Spacer(
            flex: 5,
          ),
          BottomSheet(
              onClosing: () {},
              builder: (ctx) {
                return Container(
                  color: Style.backgroundColor,
                  child: Container(
                    height: SizeConfig.height * 0.2,
                    width: SizeConfig.width,
                    decoration: BoxDecoration(
                      color: Style.secondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "Transaksi Terkini",
                          style: GoogleFonts.poppins(
                            color: Style.textColor1.withOpacity(0.7),
                            fontSize: SizeConfig.mFontSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Divider(),
                        Spacer(),
                        ListTile(
                          onTap: () {},
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          title: Text(
                            "Penjualan Emas #1234",
                            style: GoogleFonts.poppins(
                              color: Style.textColor1.withOpacity(0.5),
                              fontSize: SizeConfig.fontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            "23 April 2021",
                            style: GoogleFonts.poppins(
                              color: Style.textColor1.withOpacity(0.2),
                              fontSize: SizeConfig.fontSize * 0.8,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: Text(
                            "Rp 1,600,000",
                            style: GoogleFonts.poppins(
                              color: Style.primaryColor.withOpacity(0.8),
                              fontSize: SizeConfig.fontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
