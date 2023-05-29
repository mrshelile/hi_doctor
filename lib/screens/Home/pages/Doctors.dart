import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hi_doctor/theme/Mycolors.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).copyWith().size;
    final _searchController= TextEditingController();
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: size.width * 0.05),
              height: size.height * 0.2,
              width: size.width * 0.4,
              child: SvgPicture.asset("assets/nurse1.svg"),
            ),
            const Text(
              "Hi Malefetsane Shelile",
              style:
                  TextStyle(color: MyColors.blue1, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: size.width * 0.07),
          width: size.width * 0.9,
          height: size.height * 0.05,
          child:  TextField(
            controller: _searchController,
            decoration: const InputDecoration(
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 33, 148, 168)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 96, 154, 221)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 38, 122, 133)),
                )),
          ),
        ),
        SizedBox(
          height: size.height*0.01,
        ),
        SizedBox(
          height: size.height*0.675,
          child: StreamBuilder(
            builder: (context, snapshot) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (context, index) {
                  return Container(
                    child: ListTile(
                      subtitle: Text("Surgical specialist"),
                      title: Text("Dr. Malefetsane Shelile"),
                      leading: SizedBox(
                        width: size.width*0.1,
                        child: SvgPicture.asset("assets/profileAvatar1.svg"),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
