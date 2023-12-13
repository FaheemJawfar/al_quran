import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import '../app_config/color_config.dart';
import '../app_texts/read_quran_texts.dart';
import 'quran_helper.dart';
import 'verse_helper.dart';
import '../bookmarks/bookmark.dart';
import 'quran_aya.dart';
import '../providers/quran_provider.dart';

class ShowVerse extends StatefulWidget {
  final QuranAya quranAyaArabic;
  final QuranAya quranAyaTranslation;
  final Future<void> Function() playAudio;
  final void Function() stopAudio;
  final bool isPlaying;
  final bool isRtl;

  const ShowVerse(
      {
      required this.quranAyaArabic,
      required this.quranAyaTranslation,
      required this.playAudio,
      required this.stopAudio,
      required this.isPlaying,
      required this.isRtl,

      Key? key})
      : super(key: key);

  @override
  State<ShowVerse> createState() => _ShowVerseState();
}

class _ShowVerseState extends State<ShowVerse> {
  late final quranProvider = Provider.of<QuranProvider>(context, listen: true);

  TextSpan getArabicAya(QuranAya quranAya) {
      return TextSpan(
        children: [
          TextSpan(
            text: widget.quranAyaArabic.text,
            style: TextStyle(
              fontSize: quranProvider.arabicFontSize,
              fontFamily: quranProvider.arabicFont,
              color: quranProvider.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          TextSpan(
            text: QuranHelper.getVerseEndSymbol(widget.quranAyaArabic.ayaIndex),
            style: TextStyle(
              fontSize: 18,
              color: quranProvider.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ],
      );
    }




  @override
  Widget build(BuildContext context) {
    return widget.quranAyaTranslation.ayaIndex == 0
        ? buildBismi()
        : buildVerse();
  }

  Widget getPopupMenuItem(IconData icon, String title) {
    return ListTile(
      iconColor: quranProvider.isDarkMode ? null : Colors.green.shade700,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
    );
  }

  Widget _buildOptionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${widget.quranAyaTranslation.ayaNumberList}. ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: quranProvider.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        PopupMenuButton<String>(
          color: quranProvider.isDarkMode ? null : Colors.green.shade100,
          onSelected: (String value) {
            switch (value) {
              case 'shareVerse':
                Share.share(VerseHelper.getVerseCopy(
                    widget.quranAyaTranslation, 'copy', context));

                break;
              case 'addBookmark':
                quranProvider.addBookmark(
                  Bookmark(
                    suraNumber: quranProvider.selectedSuraNumber.toString(),
                    verseNumber:widget.quranAyaTranslation.ayaIndex.toString(),
                  ),
                  context,
                );
                break;
              case 'copy':
                VerseHelper.copyToClipboard(
                    VerseHelper.getVerseCopy(
                        widget.quranAyaTranslation, 'copy', context),
                    context);
                break;
              case 'copy_arabic':
                VerseHelper.copyToClipboard(
                    VerseHelper.getVerseCopy(
                        widget.quranAyaTranslation, 'copy_arabic', context),
                    context);

                break;
              case 'copy_translation':
                VerseHelper.copyToClipboard(
                    VerseHelper.getVerseCopy(widget.quranAyaTranslation,
                        'copy_translation', context),
                    context);
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'shareVerse',
              child: getPopupMenuItem(Icons.share, ReadQuranTexts.share),
            ),
            PopupMenuItem<String>(
              value: 'addBookmark',
              child: getPopupMenuItem(
                  Icons.bookmark_add_outlined, ReadQuranTexts.addBookmark),
            ),
            PopupMenuItem<String>(
              value: 'copy',
              child: getPopupMenuItem(
                  Icons.copy, ReadQuranTexts.copyArabicAndTranslation),
            ),
            PopupMenuItem<String>(
              value: 'copy_arabic',
              child: getPopupMenuItem(Icons.copy, ReadQuranTexts.copyArabic),
            ),
            PopupMenuItem<String>(
              value: 'copy_translation',
              child:
                  getPopupMenuItem(Icons.copy, ReadQuranTexts.copyTranslation),
            ),
          ],
          child: const Icon(Icons.more_vert),
        )
      ],
    );
  }

  Widget buildVerse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: _buildOptionsRow(),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: InkWell(
                onTap: widget.isPlaying ? widget.stopAudio : widget.playAudio,
                child: widget.isPlaying
                    ? Icon(
                        Icons.stop_circle,
                        color: quranProvider.isDarkMode ? Colors.white : Colors.red,
                      )
                    : Icon(
                        Icons.play_circle,
                        color: quranProvider.isDarkMode ? Colors.white70 : ColorConfig.primaryColor,
                      )),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: RichText(
                  textAlign: TextAlign.right,
                  text: getArabicAya(widget.quranAyaArabic),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: widget.isRtl ? Alignment.topRight: Alignment.topLeft,
                child: Text(
                  widget.quranAyaTranslation.text,
                  style: TextStyle(
                    fontSize: quranProvider.tamilFontSize,
                   // fontFamily: quranProvider.translationFont,
                  ),
                  textDirection: widget.isRtl ? TextDirection.rtl: TextDirection.ltr,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildBismi() {
    String bismiArabic = quranProvider.bismillahArabic.text;
    String bismiTamil =  quranProvider.bismillahTranslation.text;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  bismiArabic,
                  style: TextStyle(
                    fontSize: quranProvider.arabicFontSize,
                    fontFamily: quranProvider.arabicFont,
                    color:
                        quranProvider.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
               bismiTamil,
                style: TextStyle(
                  fontSize: quranProvider.tamilFontSize,
                  fontFamily: quranProvider.tamilFont,
                  color: quranProvider.isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // void showExplanationPopup(BuildContext context, int tappedNumber) {
  //   List thafseerList = quranProvider.selectedTranslation == 'pj'
  //       ? PJThafseerContent.thafseerList
  //       : quranProvider.selectedTranslation == 'tntj'
  //       ? TNTJThafseerContent.thafseerList
  //       : [];
  //   Thafseer selectedItem = Thafseer.getSelectedExplanation(tappedNumber, thafseerList);
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return ThafseerPopup(
  //       selectedThafseer: selectedItem);
  //     },
  //   );
  // }
  
  

}
