import 'package:flutter/material.dart';

enum ImperioButtonViewModel { primary, secondary }

class ImperioButton extends StatelessWidget {
  final String text;
  final double height;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Image? icon;
  final double? widthToIcon;
  final double? borderWidth;
  final Color? borderColor;
  final Color? textColor;
  final ImperioButtonViewModel model;

  const ImperioButton({
    super.key,
    required this.text,
    required this.height,
    required this.onPressed,
    required this.backgroundColor,
    this.icon,
    this.widthToIcon,
    this.textColor,
    this.model = ImperioButtonViewModel.primary,
    this.borderWidth,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: model == ImperioButtonViewModel.secondary
              ? Border.all(
                  color: borderColor ?? Colors.black, width: borderWidth ?? 1)
              : null,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 32),
              if (icon != null) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: icon!,
                    ),
                  ],
                )
              ],
              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: textColor ?? Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 32),

              // SizedBox(
              //         width: 24,
              //         height: 24,
              //         child: icon!,
              //       ),
            ],
          ),
        ),
      ),
    );
  }
}


// return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           width: 44, // Define a largura desejada do elemento à esquerda
//           height: 50, // Define a altura desejada do elemento à esquerda
//           color: Colors.blue, // Cor de fundo para visualização
//           // Outros widgets ou conteúdo conforme necessário
//         ),
//         SizedBox(width: 44), // Espaço de 44 unidades entre os elementos
//         Center(
//           child: Container(
//             width: 100, // Define a largura desejada do elemento central
//             height: 50, // Define a altura desejada do elemento central
//             color: Colors.green, // Cor de fundo para visualização
//             // Outros widgets ou conteúdo conforme necessário
//           ),
//         ),
//       ],
//     );