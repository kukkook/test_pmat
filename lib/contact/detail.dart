import 'package:flutter/material.dart';
import 'package:flutter_test_pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_test_pmat/footer.dart';

class DetailContact extends StatefulWidget {
  const DetailContact({super.key});

  @override
  State<DetailContact> createState() => _DetailContactState();
}

class _DetailContactState extends State<DetailContact> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 1440,
            child: Responsive.isDesktop(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 700
                                        : Responsive.isTablet(context)
                                            ? 300
                                            : 130,
                                    child: Image.asset(
                                        "assets/banner/contact.png"))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "สำนักงานบัญชีพรีเมี่ยม พลัสได้จดทะเบียนตามประมวลกฎหมายแพ่งและพาณิชย์",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                      'เป็นบริษัทโดยใช้ชื่อว่า "บริษัท ที่ปรึกษาบัญชีและภาษีอากร พรีเมี่ยม พลัส จำกัด"',
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                      "นิติบุคคลประเภทบริษัทจำกัด เมื่อวันที่ 3 มิถุนายน 2558",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 700
                                          : Responsive.isTablet(context)
                                              ? 300
                                              : 130,
                                      child: Image.asset(
                                          "assets/contact/line-pmat.jpg"))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                children: [
                                  SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 700
                                            : Responsive.isTablet(context)
                                                ? 300
                                                : 130,
                                        child: Image.asset(
                                            "assets/contact/line-chonburi.jpg"))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,)
                    ],
                  )
                : Container()));
  }
}
