import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UnderMaintenanceScreen extends StatelessWidget {
  const UnderMaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(flex: 2),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.string(
                    underMaintenanceIllistration,
                    fit: BoxFit.scaleDown,
                    height: 256.h,
                  ),
                ),
              ),
              const Spacer(flex: 2),
              ErrorInfo(
                title: "Under Maintenance!",
                description: "We are currently performing scheduled maintenance. Please check back later. Thank you for your patience.",
                // button: you can pass your custom button,
                btnText: "Retry",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorInfo extends StatelessWidget {
  const ErrorInfo({
    super.key,
    required this.title,
    required this.description,
    this.button,
    this.btnText,
    required this.press,
  });

  final String title;
  final String description;
  final Widget? button;
  final String? btnText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16 * 2.5),
            button ??
                ElevatedButton(
                  onPressed: press,
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48), backgroundColor: Colors.black, foregroundColor: Colors.white, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
                  child: Text(btnText ?? "Retry".toUpperCase()),
                ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

const underMaintenanceIllistration = '''<svg width="1080" height="1080" viewBox="0 0 1080 1080" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M524.01 410.31H995.89" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M991.05 381.06H528.85C526.177 381.06 524.01 383.227 524.01 385.9V400.68C524.01 403.353 526.177 405.52 528.85 405.52H991.05C993.723 405.52 995.89 403.353 995.89 400.68V385.9C995.89 383.227 993.723 381.06 991.05 381.06Z" fill="#D3D3D3"/>
<path d="M991.05 373.62H528.85C526.177 373.62 524.01 375.787 524.01 378.46V393.24C524.01 395.913 526.177 398.08 528.85 398.08H991.05C993.723 398.08 995.89 395.913 995.89 393.24V378.46C995.89 375.787 993.723 373.62 991.05 373.62Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M941.12 397.01V819.65" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M927.88 229.47V819.65" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M883.36 277V819.65" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M870.12 397.01V819.65" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 403.44L882.97 448.74" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 403.44L928.27 448.74" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M959.99 366.91V427.91C959.99 429.602 959.318 431.225 958.121 432.421C956.925 433.618 955.302 434.29 953.61 434.29H855.61C853.918 434.29 852.295 433.618 851.099 432.421C849.902 431.225 849.23 429.602 849.23 427.91V329.91C849.23 328.218 849.902 326.595 851.099 325.399C852.295 324.202 853.918 323.53 855.61 323.53H916.61C928.11 323.546 939.135 328.121 947.267 336.253C955.399 344.385 959.974 355.41 959.99 366.91Z" fill="#D3D3D3" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M957.15 495.37H852.04C850.471 495.37 849.2 496.642 849.2 498.21V510.78C849.2 512.348 850.471 513.62 852.04 513.62H957.15C958.718 513.62 959.99 512.348 959.99 510.78V498.21C959.99 496.642 958.718 495.37 957.15 495.37Z" fill="#D3D3D3" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M105.88 701.17V867.14" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M115.84 701.17V867.14" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M281.14 701.17V867.14" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M271.18 701.17V867.14" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M290.77 768.27H96.1401C94.3065 768.27 92.8201 769.756 92.8201 771.59V778.23C92.8201 780.064 94.3065 781.55 96.1401 781.55H290.77C292.604 781.55 294.09 780.064 294.09 778.23V771.59C294.09 769.756 292.604 768.27 290.77 768.27Z" fill="#DDDDDD"/>
<path d="M290.77 692.74H96.1401C94.3065 692.74 92.8201 694.226 92.8201 696.06V702.7C92.8201 704.534 94.3065 706.02 96.1401 706.02H290.77C292.604 706.02 294.09 704.534 294.09 702.7V696.06C294.09 694.226 292.604 692.74 290.77 692.74Z" fill="#DDDDDD"/>
<path d="M290.77 687.89H96.1401C94.3065 687.89 92.8201 689.376 92.8201 691.21V697.85C92.8201 699.684 94.3065 701.17 96.1401 701.17H290.77C292.604 701.17 294.09 699.684 294.09 697.85V691.21C294.09 689.376 292.604 687.89 290.77 687.89Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M290.77 764.41H96.1401C94.3065 764.41 92.8201 765.896 92.8201 767.73V774.37C92.8201 776.204 94.3065 777.69 96.1401 777.69H290.77C292.604 777.69 294.09 776.204 294.09 774.37V767.73C294.09 765.896 292.604 764.41 290.77 764.41Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M957.15 650.96H852.04C850.471 650.96 849.2 652.231 849.2 653.8V666.37C849.2 667.938 850.471 669.21 852.04 669.21H957.15C958.718 669.21 959.99 667.938 959.99 666.37V653.8C959.99 652.231 958.718 650.96 957.15 650.96Z" fill="#D3D3D3" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M928.27 514.28L882.97 559.58" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 514.28L928.27 559.58" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 449.4L882.97 494.7" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 449.4L928.27 494.7" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 277L882.97 322.3" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M882.97 277L928.27 322.3" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M928.27 559.84L882.97 605.14" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 559.84L928.27 605.14" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 605.4L882.97 650.7" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 605.4L928.27 650.7" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 669.48L882.97 714.78" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 669.48L928.27 714.78" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 715.04L882.97 760.34" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 715.04L928.27 760.34" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M928.27 760.6L882.97 805.9" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M882.97 760.6L928.27 805.9" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M844 819.65H954.7C956.103 819.65 957.449 820.207 958.441 821.199C959.433 822.191 959.99 823.537 959.99 824.94V862.49C959.99 863.893 959.433 865.239 958.441 866.231C957.449 867.223 956.103 867.78 954.7 867.78H810.54C809.137 867.78 807.791 867.223 806.799 866.231C805.807 865.239 805.25 863.893 805.25 862.49V858.44C805.25 848.159 809.331 838.299 816.597 831.025C823.863 823.752 833.719 819.661 844 819.65Z" fill="#D3D3D3" stroke="black" stroke-width="3" stroke-miterlimit="10"/>
<path d="M927.88 277H883.36L905.13 253.65L927.88 277Z" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M927.88 229.47C930.829 229.47 933.22 227.079 933.22 224.13C933.22 221.181 930.829 218.79 927.88 218.79C924.931 218.79 922.54 221.181 922.54 224.13C922.54 227.079 924.931 229.47 927.88 229.47Z" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M922.54 224.13L905.13 253.65" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M922.54 224.13L528.42 373.62" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M688.23 398.08H634.01C632.182 398.08 630.7 399.562 630.7 401.39V416.93C630.7 418.758 632.182 420.24 634.01 420.24H688.23C690.058 420.24 691.54 418.758 691.54 416.93V401.39C691.54 399.562 690.058 398.08 688.23 398.08Z" fill="#D3D3D3" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M650.42 414.91C653.596 414.91 656.17 412.336 656.17 409.16C656.17 405.984 653.596 403.41 650.42 403.41C647.244 403.41 644.67 405.984 644.67 409.16C644.67 412.336 647.244 414.91 650.42 414.91Z" fill="white" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M672.27 414.91C675.446 414.91 678.02 412.336 678.02 409.16C678.02 405.984 675.446 403.41 672.27 403.41C669.094 403.41 666.52 405.984 666.52 409.16C666.52 412.336 669.094 414.91 672.27 414.91Z" fill="white" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M205.39 658.66L253.49 566.49C254.097 565.327 255.009 564.351 256.129 563.667C257.249 562.984 258.534 562.618 259.846 562.61C261.158 562.602 262.447 562.951 263.576 563.621C264.704 564.29 265.629 565.254 266.25 566.41L315.8 658.58C316.392 659.68 316.688 660.915 316.66 662.163C316.631 663.412 316.28 664.632 315.639 665.704C314.998 666.776 314.09 667.664 313.003 668.28C311.917 668.896 310.689 669.22 309.44 669.22H211.79C210.549 669.22 209.329 668.9 208.247 668.29C207.166 667.681 206.26 666.804 205.617 665.742C204.973 664.681 204.614 663.471 204.575 662.231C204.535 660.99 204.816 659.76 205.39 658.66Z" fill="#BCBCBC"/>
<path d="M194.29 651.13L242.39 559C242.997 557.837 243.909 556.861 245.029 556.177C246.149 555.494 247.434 555.128 248.746 555.12C250.058 555.112 251.347 555.461 252.476 556.131C253.604 556.8 254.529 557.764 255.15 558.92L304.69 651C305.282 652.1 305.578 653.335 305.55 654.584C305.521 655.832 305.17 657.052 304.529 658.124C303.888 659.197 302.98 660.084 301.893 660.7C300.807 661.316 299.579 661.64 298.33 661.64H200.69C199.456 661.635 198.243 661.315 197.168 660.708C196.094 660.101 195.192 659.229 194.55 658.175C193.908 657.121 193.547 655.92 193.502 654.687C193.456 653.453 193.728 652.229 194.29 651.13V651.13Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M249.94 632.46H248.79C245.94 632.46 241.03 630.13 241.03 627.29L243.62 587C243.625 585.63 244.172 584.319 245.14 583.35C246.109 582.382 247.42 581.835 248.79 581.83H249.94C251.31 581.835 252.622 582.382 253.59 583.35C254.558 584.319 255.105 585.63 255.11 587L258 627.29C258 630.14 252.79 632.46 249.94 632.46Z" fill="white" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M249.51 653.3C253.84 653.3 257.35 649.79 257.35 645.46C257.35 641.13 253.84 637.62 249.51 637.62C245.18 637.62 241.67 641.13 241.67 645.46C241.67 649.79 245.18 653.3 249.51 653.3Z" fill="white" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M661.12 464.55V420.24" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M629.25 530.48L661.05 498.86L690.66 530.58" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M625.4 271.59C620.644 271.588 616.014 270.06 612.191 267.23C608.369 264.4 605.556 260.417 604.166 255.868C602.777 251.32 602.884 246.445 604.473 241.962C606.061 237.479 609.047 233.624 612.991 230.965C616.934 228.306 621.627 226.983 626.379 227.191C631.13 227.399 635.69 229.127 639.386 232.121C643.082 235.114 645.719 239.215 646.91 243.82C648.101 248.425 647.782 253.29 646 257.7" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M632.52 228.1C633.099 224.018 634.491 220.094 636.614 216.56C638.737 213.025 641.548 209.953 644.88 207.525C648.212 205.097 651.998 203.363 656.012 202.424C660.027 201.486 664.189 201.363 668.252 202.062C672.315 202.762 676.197 204.27 679.666 206.496C683.136 208.723 686.123 211.624 688.452 215.026C690.78 218.429 692.402 222.264 693.221 226.305C694.04 230.345 694.04 234.509 693.22 238.55" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M682.75 241.63C684.859 240.114 687.296 239.117 689.863 238.722C692.43 238.327 695.054 238.544 697.522 239.356C699.989 240.167 702.229 241.551 704.06 243.393C705.891 245.235 707.261 247.484 708.057 249.956C708.854 252.429 709.054 255.054 708.643 257.619C708.232 260.183 707.221 262.614 705.691 264.714C704.162 266.813 702.158 268.521 699.843 269.699C697.528 270.876 694.967 271.49 692.37 271.49" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M625.4 271.59H692.38" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M132.25 445.45C124.683 445.45 117.316 443.021 111.233 438.52C105.15 434.018 100.673 427.683 98.4615 420.447C96.2498 413.21 96.4199 405.454 98.947 398.322C101.474 391.189 106.224 385.056 112.499 380.826C118.773 376.596 126.24 374.492 133.799 374.824C141.359 375.156 148.613 377.907 154.492 382.671C160.371 387.435 164.565 393.961 166.457 401.288C168.349 408.615 167.838 416.355 165 423.37" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M143.57 376.27C144.519 369.803 146.753 363.59 150.14 357.999C153.526 352.408 157.997 347.551 163.29 343.715C168.582 339.878 174.588 337.139 180.955 335.659C187.322 334.178 193.921 333.987 200.363 335.096C206.805 336.205 212.96 338.592 218.466 342.116C223.971 345.639 228.716 350.229 232.421 355.615C236.126 361 238.715 367.073 240.038 373.474C241.36 379.876 241.388 386.477 240.12 392.89" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M223.48 397.79C226.835 395.375 230.712 393.788 234.797 393.157C238.882 392.526 243.058 392.87 246.985 394.161C250.912 395.451 254.477 397.652 257.392 400.583C260.306 403.514 262.486 407.092 263.754 411.026C265.022 414.96 265.342 419.138 264.688 423.22C264.034 427.301 262.424 431.169 259.99 434.51C257.556 437.851 254.367 440.569 250.683 442.442C246.998 444.315 242.923 445.291 238.79 445.29" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M132.25 445.45H238.79" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M309.3 393.85C304.709 393.847 300.239 392.37 296.55 389.636C292.861 386.903 290.147 383.057 288.807 378.666C287.468 374.274 287.573 369.569 289.108 365.241C290.644 360.914 293.527 357.194 297.335 354.629C301.143 352.063 305.674 350.788 310.261 350.991C314.848 351.194 319.248 352.863 322.815 355.755C326.382 358.646 328.926 362.606 330.074 367.051C331.222 371.497 330.912 376.194 329.19 380.45" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M316.17 351.88C316.739 347.947 318.09 344.167 320.144 340.765C322.198 337.363 324.913 334.406 328.129 332.071C331.344 329.736 334.996 328.069 338.867 327.168C342.737 326.268 346.75 326.153 350.666 326.829C354.582 327.506 358.323 328.96 361.668 331.107C365.012 333.253 367.893 336.049 370.139 339.327C372.385 342.606 373.951 346.302 374.745 350.196C375.539 354.09 375.544 358.104 374.76 362" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M364.66 364.94C366.695 363.474 369.048 362.51 371.527 362.127C374.006 361.744 376.541 361.952 378.924 362.735C381.307 363.517 383.471 364.853 385.24 366.631C387.008 368.41 388.331 370.581 389.101 372.969C389.871 375.356 390.065 377.892 389.668 380.368C389.271 382.845 388.294 385.193 386.816 387.22C385.339 389.247 383.403 390.896 381.167 392.033C378.931 393.17 376.458 393.761 373.95 393.76" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10" stroke-linecap="round"/>
<path d="M309.3 393.85H373.95" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M351.37 754.53H236.81C233.596 754.53 230.99 757.136 230.99 760.35V778.23C230.99 781.444 233.596 784.05 236.81 784.05H351.37C354.584 784.05 357.19 781.444 357.19 778.23V760.35C357.19 757.136 354.584 754.53 351.37 754.53Z" fill="white" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M303.31 754.53H317.88L288.37 784.04L274.21 784.08L303.31 754.53Z" fill="#0E0E0E"/>
<path d="M267.88 754.53H282.44L252.94 784.04L238.78 784.08L267.88 754.53Z" fill="#0E0E0E"/>
<path d="M335.25 754.53H349.81L320.3 784.04L306.14 784.08L335.25 754.53Z" fill="#0E0E0E"/>
<path d="M249.92 784.78V863.85C249.92 864.72 249.574 865.554 248.959 866.169C248.344 866.784 247.51 867.13 246.64 867.13H240.09C239.22 867.13 238.386 866.784 237.771 866.169C237.156 865.554 236.81 864.72 236.81 863.85V784.05" fill="white"/>
<path d="M249.92 784.78V863.85C249.92 864.72 249.574 865.554 248.959 866.169C248.344 866.784 247.51 867.13 246.64 867.13H240.09C239.22 867.13 238.386 866.784 237.771 866.169C237.156 865.554 236.81 864.72 236.81 863.85V784.05" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M236.82 754.53V741.06C236.82 740.19 237.166 739.356 237.781 738.741C238.396 738.126 239.23 737.78 240.1 737.78H246.65C247.52 737.78 248.354 738.126 248.969 738.741C249.584 739.356 249.93 740.19 249.93 741.06V754.53" fill="white"/>
<path d="M236.82 754.53V741.06C236.82 740.19 237.166 739.356 237.781 738.741C238.396 738.126 239.23 737.78 240.1 737.78H246.65C247.52 737.78 248.354 738.126 248.969 738.741C249.584 739.356 249.93 740.19 249.93 741.06V754.53" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M350.38 784.08V863.86C350.38 864.73 350.034 865.564 349.419 866.179C348.804 866.794 347.97 867.14 347.1 867.14H340.55C339.68 867.14 338.846 866.794 338.231 866.179C337.616 865.564 337.27 864.73 337.27 863.86V784.08" fill="white"/>
<path d="M350.38 784.08V863.86C350.38 864.73 350.034 865.564 349.419 866.179C348.804 866.794 347.97 867.14 347.1 867.14H340.55C339.68 867.14 338.846 866.794 338.231 866.179C337.616 865.564 337.27 864.73 337.27 863.86V784.08" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M337.28 754.53V741.06C337.28 740.19 337.626 739.356 338.241 738.741C338.856 738.126 339.69 737.78 340.56 737.78H347.11C347.98 737.78 348.814 738.126 349.429 738.741C350.044 739.356 350.39 740.19 350.39 741.06V754.53" fill="white"/>
<path d="M337.28 754.53V741.06C337.28 740.19 337.626 739.356 338.241 738.741C338.856 738.126 339.69 737.78 340.56 737.78H347.11C347.98 737.78 348.814 738.126 349.429 738.741C350.044 739.356 350.39 740.19 350.39 741.06V754.53" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M243.37 750.4C245.38 750.4 247.01 748.77 247.01 746.76C247.01 744.75 245.38 743.12 243.37 743.12C241.36 743.12 239.73 744.75 239.73 746.76C239.73 748.77 241.36 750.4 243.37 750.4Z" fill="white" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M343.83 750.4C345.84 750.4 347.47 748.77 347.47 746.76C347.47 744.75 345.84 743.12 343.83 743.12C341.82 743.12 340.19 744.75 340.19 746.76C340.19 748.77 341.82 750.4 343.83 750.4Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M243.37 798.51C245.38 798.51 247.01 796.88 247.01 794.87C247.01 792.86 245.38 791.23 243.37 791.23C241.36 791.23 239.73 792.86 239.73 794.87C239.73 796.88 241.36 798.51 243.37 798.51Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M343.83 798.51C345.84 798.51 347.47 796.88 347.47 794.87C347.47 792.86 345.84 791.23 343.83 791.23C341.82 791.23 340.19 792.86 340.19 794.87C340.19 796.88 341.82 798.51 343.83 798.51Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M744.72 530.61H383.51C374.563 530.61 367.31 537.863 367.31 546.81V761.31C367.31 770.257 374.563 777.51 383.51 777.51H744.72C753.667 777.51 760.92 770.257 760.92 761.31V546.81C760.92 537.863 753.667 530.61 744.72 530.61Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M730.88 546.25H397.35C389.623 546.25 383.36 552.514 383.36 560.24V732.54C383.36 740.266 389.623 746.53 397.35 746.53H730.88C738.606 746.53 744.87 740.266 744.87 732.54V560.24C744.87 552.514 738.606 546.25 730.88 546.25Z" fill="#DBDBDB"/>
<path d="M730.88 546.25H397.35C389.623 546.25 383.36 552.514 383.36 560.24V732.54C383.36 740.266 389.623 746.53 397.35 746.53H730.88C738.606 746.53 744.87 740.266 744.87 732.54V560.24C744.87 552.514 738.606 546.25 730.88 546.25Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M596.6 777.51H531.63V841.19H596.6V777.51Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M684.78 848.14H445.05C441.438 848.14 438.51 851.068 438.51 854.68V868.94C438.51 872.552 441.438 875.48 445.05 875.48H684.78C688.392 875.48 691.32 872.552 691.32 868.94V854.68C691.32 851.068 688.392 848.14 684.78 848.14Z" fill="#DBDBDB"/>
<path d="M683.98 840.87H444.25C440.638 840.87 437.71 843.798 437.71 847.41V861.67C437.71 865.282 440.638 868.21 444.25 868.21H683.98C687.592 868.21 690.52 865.282 690.52 861.67V847.41C690.52 843.798 687.592 840.87 683.98 840.87Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M563.64 770.76C568.71 770.76 572.82 766.65 572.82 761.58C572.82 756.51 568.71 752.4 563.64 752.4C558.57 752.4 554.46 756.51 554.46 761.58C554.46 766.65 558.57 770.76 563.64 770.76Z" stroke="#0E0E0E" stroke-width="3" stroke-miterlimit="10"/>
<path d="M506.49 605.77L466.75 645.51" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M466.75 605.76L506.49 645.51" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M658.95 605.77L619.2 645.51" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M619.2 605.77L658.95 645.51" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M523.86 688.51H602" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M572.09 689.32H597.3V721.89C597.3 722.534 597.044 723.153 596.588 723.608C596.133 724.064 595.515 724.32 594.87 724.32H574.52C573.876 724.32 573.258 724.064 572.802 723.608C572.346 723.153 572.09 722.534 572.09 721.89V689.32Z" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M584.69 706.82V688.51" stroke="#0E0E0E" stroke-width="6" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M661.12 472.66C663.362 472.66 665.18 470.842 665.18 468.6C665.18 466.358 663.362 464.54 661.12 464.54C658.878 464.54 657.06 466.358 657.06 468.6C657.06 470.842 658.878 472.66 661.12 472.66Z" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M661.12 473.71V487.23C671.93 487.23 671.93 501.95 661.12 501.95C658.82 501.95 657.12 500.61 655.58 498.86" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M975.89 868.2H85.49" stroke="black" stroke-width="3" stroke-miterlimit="10"/>
<path d="M737.58 868.34H797L770 784.34C769.817 783.769 769.457 783.271 768.973 782.917C768.489 782.564 767.905 782.374 767.305 782.374C766.705 782.374 766.121 782.564 765.637 782.917C765.153 783.271 764.793 783.769 764.61 784.34L737.58 868.34Z" stroke="#0E0E0E" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M773.76 796.18L755.22 813.48L751.75 824.27L776.04 803.25L773.76 796.18Z" fill="#0E0E0E"/>
<path d="M780.02 815.65L745.64 843.27L741.98 854.67L782.42 823.11L780.02 815.65Z" fill="#0E0E0E"/>
<path d="M786.88 836.98L744.61 868.34H756.62L789.34 845.24L786.88 836.98Z" fill="#0E0E0E"/>
</svg>
''';
