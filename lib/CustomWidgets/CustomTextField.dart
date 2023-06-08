  import 'package:flutter/material.dart';
  
  import '../utils/Constants.dart';
  import 'CalenderWidget.dart';




  class CustomTextField extends StatefulWidget {
    final String? Function(String?)? validator;
    final String hintText;
    final String? suffixText;
    final String? prefixText;
    final bool? suffix;
    final TextInputType? textType;
    final bool? autoValidate;
    final bool? enabled;
    final int? maxLength;
    final double? height;
    final TextEditingController? controller;
    var onChanged;

    CustomTextField({
      Key? key,
      required this.hintText,
      this.onChanged,
      this.suffix,
      this.validator,
      this.maxLength,
      this.textType,
      this.autoValidate,
      this.controller,
      this.enabled,
      this.height,
      this.suffixText,
      this.prefixText,
    }) : super(key: key);
  
    @override
    State<CustomTextField> createState() => _CustomTextFieldState();
  }
  
  class _CustomTextFieldState extends State<CustomTextField> {
  
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: widget.height ?? 50,
          child: TextFormField(
            enabled: widget.enabled,
            onChanged: widget.onChanged,
            controller: widget.controller,
            keyboardType: widget.textType ?? TextInputType.text,
            validator: widget.validator,
            cursorColor: black,
            style: const TextStyle(
              color: Color(0xffa4a4a4),
              fontSize: 16,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
            maxLength: widget.maxLength,
            //readOnly: widget.suffix ?? false,
            decoration: InputDecoration(
                prefix: widget.prefixText != null
                    ? Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(widget.prefixText!),
                )
                    : null,
                prefixStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
                suffixIcon: widget.suffix == true
                    ? IconButton(
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return ShowCalendar(
                            controller: widget.controller!,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.calendar_month,
                      color: gray,
                    ))
                    : null,
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                filled: true,
                suffixText: widget.suffixText,
                suffixStyle: const TextStyle(
                  color: Color(0xff484848),
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: normalGray),
                    borderRadius: BorderRadius.circular(8.5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffacacac)),
                    borderRadius: BorderRadius.circular(8.5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: red),
                    borderRadius: BorderRadius.circular(8.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffacacac)),
                    borderRadius: BorderRadius.circular(8.5)),
                hintText: widget.hintText,
                hintStyle: bodyText16normal(color: darkGray)),
          ),
        ),
      );
    }
  }