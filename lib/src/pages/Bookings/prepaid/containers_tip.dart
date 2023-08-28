import 'package:flutter/material.dart';

class ContainersTip extends StatefulWidget {
  final String monto;
  final String porcentaje;
  final bool isSelected; // Nuevo parámetro para indicar si está seleccionado
  final Function(bool) onSelectedChanged;
  const ContainersTip(
      {super.key,
      required this.porcentaje,
      this.isSelected = false,
      required this.onSelectedChanged,
      required this.monto});

  @override
  State<ContainersTip> createState() => _ContainersTipState();
}

class _ContainersTipState extends State<ContainersTip> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width * 0.266;
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              if (!widget.isSelected) {
                widget.onSelectedChanged(true);
              }
            },
            child: Container(
              width: ancho,
              height: 23,
              padding: const EdgeInsets.symmetric(vertical: 3),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: widget.isSelected
                        ? Color(0xFFFF552B)
                        : Color(0xFF443F56),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
              ),
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.porcentaje + "\%",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (!widget.isSelected) {
                widget.onSelectedChanged(true);
              }
            },
            child: Container(
              width: ancho,
              height: 23,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              decoration: ShapeDecoration(
                color:
                    widget.isSelected ? Color(0xFFFF552B) : Color(0xFF443F56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "MX" + "  " + "\$" + widget.monto,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 12,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
