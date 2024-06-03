import 'package:flutter/material.dart';
import 'package:portfolio/utils/string_extensions.dart';

import '../helper/text_styles.dart';

class MyErrorWidget extends StatelessWidget {
  const MyErrorWidget({Key? key, this.errorMessage, this.refreshHandler, this.heightToCenter}) : super(key: key);
  final String? errorMessage;
  final Future Function()? refreshHandler;
  final double? heightToCenter;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => refreshHandler == null?null:refreshHandler!(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: heightToCenter??MediaQuery.of(context).size.height/2, width: double.infinity,),
            InkWell(
                onTap: () {
                  if(refreshHandler != null){
                    refreshHandler!();
                  }
                },
                child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text("${errorMessage??"MsgGenericError".localize()}\n${"MsgRefresh".localize()}", style: TextStyles.boldLargePrimaryText, textAlign: TextAlign.center,),
            )),
          ],
        ),
      ),
    );
  }
}
