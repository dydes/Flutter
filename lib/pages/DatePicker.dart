import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key? key}) : super(key: key);
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _nowDate=DateTime.now();
  var _nowTime=TimeOfDay(hour:12,minute:20);

 _showDatePicker() async {
   //   showDatePicker(
   //     context: context,
   //     initialDate:_nowDate,
   //     firstDate: DateTime(1980),
   //     lastDate: DateTime(2100)
   //   ).then((result){
   //     print(result);
   //   });
   // }

   var result = await showDatePicker(
       context: context,
       initialDate: _nowDate,
       firstDate: DateTime(1980),
       lastDate: DateTime(2100)
   );
   print(result);
   setState(() {
     this._nowDate=result!;
   });
 }

  @override

  void initState(){
    super.initState();
    //print(now);
    //print(now.microsecondsSinceEpoch);转为时间戳
    //print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('多选演示页面'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              onTap: (){
                  _showDatePicker();
                  print('打开日期组件');
              },
            ),

          ],
        )
    );
  }
}
