import 'package:flutter/material.dart';
class GridDesign extends StatefulWidget{
  int index;
  GridDesign(this.index);
  @override
  State<GridDesign> createState() => GridDesignState();
}

class GridDesignState extends State<GridDesign> {
  static bool toggle=true;
  static int count=0;
  var s='';
  Color color=Colors.grey;
  static List<String> list=['a','b','c','d','e','f','g','h','i'];
  @override
  Widget build(BuildContext context) {
    change(){
      count++;
      setState(() {
        if(toggle){
          s='X';
          color=Colors.purpleAccent;
          list[widget.index]=s;
          toggle=false;
        }else{
          s='O';
          color=Colors.orange;
          list[widget.index]=s;
          toggle=true;
        }
        //if(count>4){
        //  print(count);
        //}
      });
      if (list[0] == list[1] && list[0] == list[2]) {
        print('${list[0]} is Winner');
      } else if (list[3] == list[4] && list[3] == list[5]) {
        print('${list[3]} is Winner');
      } else if (list[6] == list[7] && list[6] == list[8]) {
        print('${list[6]} is Winner');
      } else if (list[0] == list[3] && list[0] == list[6]) {
        print('${list[0]} is Winner');
      } else if (list[1] == list[4] && list[1] == list[7]) {
        print('${list[1]} is Winner');
      } else if (list[2] == list[5] && list[2] == list[8]) {
        print('${list[2]} is Winner');
      } else if (list[0] == list[4] && list[0] == list[8]) {
        print('${list[0]} is Winner');
      } else if (list[2] == list[4] && list[2] == list[6]) {
        print('${list[2]} is Winner');
      }else{
        if(count==9){
          list=['a','b','c','d','e','f','g','h','i'];
          count=0;
          toggle=true;
          print('Match Draw');
        }

      }
    }
    return InkWell(
      onTap: (){
       change();
      },
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 2,
            color: Colors.black
          ),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child:Text(s,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 60),),
      ),
    );
  }
}