/*====================================================================
  Filename: flintlockOuterParts-01.js
  By: A.R.Collins

  A set of Animation Objects which combined, draws the
  lock from an early 18th century flintlock pistol made by
  Taylor and Maddon, London gunsmiths.

  Kindly give credit to Dr A R Collins <http://www.arc.id.au/>
  Report bugs to tony at arc.id.au

  Date   |Description                                             |By
  --------------------------------------------------------------------
  21Nov15 Converted to Cango from flintlockParts-14.js             ARC
  ====================================================================*/

  var fil1 = "#AAA9A9";
  var fil2 = "#DEDEDD";
  var fil3 = "#6E6E6D";

  var xOfs = 230;           // drawing origin in original SVG coords
  var yOfs = 165.26;

  var cockCx = 293.101;      // centers of rotation in original SVG coords
  var cockCy = 192.928;
  var fizzenCx = 154.328;
  var fizzenCy = 174.814;
  var searCx = 334.830;
  var searCy = 201.449;
  var searSpringCx = 379.689;
  var searSpringCy = 198.844;
  var mainSpringCx = 108.669;
  var mainSpringCy = 212.831;
  var fizzenSpringCx = 98.0;
  var fizzenSpringCy = 216.0;

  var cockCxOfs = cockCx-xOfs;      // centers of rotation relative to the group reference point
  var cockCyOfs = cockCy-yOfs;
  var fizzenCxOfs = fizzenCx-xOfs;
  var fizzenCyOfs = fizzenCy-yOfs;
  var searCxOfs = searCx-xOfs;
  var searCyOfs = searCy-yOfs;
  var searSpringCxOfs = searSpringCx-xOfs;
  var searSpringCyOfs = searSpringCy-yOfs;
  var mainSpringCxOfs = mainSpringCx-xOfs;
  var mainSpringCyOfs = mainSpringCy-yOfs;
  var fizzenSpringCxOfs = fizzenSpringCx-xOfs;
  var fizzenSpringCyOfs = fizzenSpringCy-yOfs;

  var Plate =  // fil3
"M207.849 165.257c3.17717,-1.43937 7.37559,-13.0445 8.45236,-17.2417 0.47874,-1.86693 2.02598,-3.35748 2.89173,0.152362 0.987008,4.00236 -1.13386,9.72835 0.198819,11.0736 0.787795,0.795276 9.32283,1.57598 11.4835,1.65827 92.0677,3.51693 127.682,15.6579 146.545,31.5035 18.863,15.8453 15.1276,14.113 19.2035,16.1154 4.07598,2.00236 4.38622,4.30118 0.266142,5.10512 -15.2921,2.98425 -25.1839,10.1311 -42.5673,11.5945 -24.3689,2.05236 -37.4752,-2.9063 -108.832,-2.96378 -94.3602,-0.0759843 -137.049,1.37795 -154.221,-1.89803 -16.4685,-3.14173 -20.3547,-18.4996 -6.85197,-26.5146 15.4925,-9.19567 50.0669,-1.56929 50.9189,-25.3933 19.1933,-0.820866 69.8441,-1.98307 72.5126,-3.19134zm-117.135 46.8382c3.36299,-0.00275591 6.08858,-2.73228 6.08583,-6.09528 -0.00275591,-3.36299 -2.73268,-6.08858 -6.09567,-6.08583 -3.36299,0.00275591 -6.08819,2.73268 -6.08543,6.09567 0.00275591,3.36299 2.73228,6.08819 6.09528,6.08543z";

  var Pan =   // "fil0
"M218.97 158.136c-7.36654,26.3232 -34.6917,32.1402 -53.4909,9.27677";

  var FlintScrew =  // fil3
"M347.669 90.5976l-19.3425 41.6063c-1.66181,2.77795 -6.87205,3.81811 -9.06299,2.78504 -2.3311,-1.09882 -4.76654,-5.52165 -3.82165,-8.34094l19.637 -42.1374c0.692913,-1.86299 -0.766535,-2.01142 -1.18819,-2.56732 -0.904724,-1.1937 -1.2748,-3.04724 -0.401181,-4.46417 1.32677,-2.15197 4.39961,-1.63858 5.01732,-2.04331 0.548425,-0.359449 1.11102,-7.0878 1.19252,-9.53819 0.244094,-7.32598 5.63622,-16.0252 16.2717,-11.2654 10.6354,4.75984 7.52165,15.0126 2.21535,19.9669 -1.48858,1.38976 -6.04449,6.57244 -5.91535,7.34331 0.127559,0.76063 2.43661,2.46417 1.61693,5.16535 -0.535827,1.76614 -2.85,2.65236 -4.06732,2.63622 -0.765748,-0.00984252 -1.27008,-0.790551 -2.15157,0.853543z";

  var CockOutline =  // fil1
"M353.774 94.4417c-6.49843,-4.54134 -13.1272,-8.91299 -20.2992,-12.3283 -8.26299,-3.90866 -17.5933,-6.78937 -27.1362,-7.16732 -3.99882,-0.158268 -5.07205,1.45551 -2.18583,2.82087 3.7811,1.78937 8.0748,4.23228 15.8768,7.64685 2.78622,1.21929 5.18465,2.33189 7.72598,3.54488 4.15276,3.84409 14.8638,10.3598 19.8063,11.5909 -2.29213,0.852362 -2.76535,7.39094 -8.52008,14.3638 -4.70472,-2.59843 -17.9776,-6.18228 -25.9976,-8.36181 -11.1382,-3.02677 -20.2008,-5.15669 -19.7173,-3.53031 0.483465,1.62638 8.25945,7.02165 14.6646,10.0437 7.17244,3.38386 16.6366,8.51102 22.1933,14.3106 2.47677,3.65354 0.0622047,9.18386 -3.96772,11.1551 -4.02992,1.97126 -7.11654,0.773228 -11.8248,-1.33701 -2.14016,-0.959055 -4.53386,-2.16142 -7.29724,-3.46575 -43.7972,-20.676 -67.2854,40.0531 -48.6634,71.5091 14.8913,25.1547 56.0209,23.3028 61.1961,-3.69921 3.9689,-20.7098 -9.25748,-30.0657 -20.4378,-34.389 -9.05236,-3.50039 -1.67323,-16.5299 7.91142,-14.2055 2.69134,0.652362 5.51417,1.20039 7.77953,1.54488 15.8591,2.41339 21.5339,-2.67087 26.276,-13.7425 1.36496,-3.1874 2.06772,-6.1748 2.32756,-9.1126 4.25079,-0.0988189 10.6819,-15.7669 14.8843,-27.8295 1.91024,-5.48268 3.54764,-10.2744 4.66654,-12.6232 5.57992,-11.7118 13.6055,-16.4535 6.55354,-21.587 -2.86102,-2.08307 -7.38071,2.47717 -6.65984,5.01142 0.355906,1.25 2.73898,1.17008 1.98346,2.77165 -1.4252,3.02165 -4.55394,3.30157 -5.63661,5.29921 -1.02047,1.88228 -3.3689,7.47244 -5.50157,11.7661z";

  var CockHighlights = // fil0  outline only
"M339.23 114.931c1.72402,1.30276 3.10551,3.47992 3.86929,7.39409 0.464173,2.37874 0.776772,5.32441 0.454331,8.8126m-2.34488 8.68465c5.77283,-17.9315 -7.02047,-26.1339 -17.5752,-30.1m28.361 -12.5409c-2.48228,2.79606 -11.3461,-2.06693 -23.6343,-7.9122m25.3724 5.27205c-1.23465,2.49094 -2.35787,4.42795 -3.13071,5.09606 -1.60472,1.3878 -2.34764,1.04252 -2.95709,0.914961";

  var Flint = // fil3
"M271.047 73.8654c0.24252,0.108268 2.64921,0.172047 6.65866,1.07638 2.92913,0.66063 13.4366,4.85787 21.7638,8.52795 5.69528,2.50984 16.6043,6.36102 22.063,9.74291 0.335433,0.207874 0.740945,3.30787 0.740945,3.30787 -2.58701,4.59567 -4.47638,3.75512 -12.6075,2.06575 -4.6685,-0.969685 -10.2984,-3.86417 -14.9929,-4.74921 -9.79291,-1.84567 -17.839,-14.1224 -23.626,-19.9717z";

  var Leather = // fil2
"M292.928 79.287c-1.7437,-0.801969 -4.8063,-3.10236 -4.51614,-3.7 0.338189,-0.697244 2.85157,-3.37717 3.31772,-3.17598 3.75984,1.62283 10.4087,4.66024 12.6941,5.96299 6.26693,3.57283 23.3768,10.0984 25.1035,13.9024 1.04055,2.29213 -3.35748,10.4756 -4.73583,12.9937 -2.65709,4.85472 -11.9106,0.602362 -24.9476,-2.27835 -6.59488,-1.45748 -5.89134,-1.48031 -10.3843,-2.13976 -2.60591,-0.382677 -4.22835,-1.15748 -4.3437,-4.13425 -0.112992,-2.92638 1.23858,-2.48228 2.33661,-2.56772 4.15787,-0.325984 11.574,2.04094 19.013,4.52559 4.21654,1.40866 9.83858,2.40748 11.9244,2.60433 2.7815,0.262205 5.40472,-4.10945 5.11575,-6.55906 -0.322047,-2.7311 -13.837,-8.19449 -17.2626,-9.51024 -5.01772,-1.92756 -10.5024,-4.92717 -13.315,-5.92362z";

  var ThreadOutside =  // fil0  outline only
"M351.719 81.4512l-12.6425 -5.68307m-1.75827 35.9465l-11.3657 -6.97402m10.2787 9.27795l-11.3004 -6.9622m2.39134 25.9583l-11.1524 -6.60118m12.2791 4.65157l-11.3287 -6.88622m13.3327 2.47244l-5.85906 -3.50394m-6.22205 -1.00433l11.0748 6.73701m26.6516 -74.2378c1.19528,0.843307 2.50591,3.9874 1.4815,5.7685l2.61614 1.37677c0.981102,-1.80315 -0.480315,-5.0248 -1.67559,-5.86811";

  var CockScrew =  // fil2
"M290.988 176.243c-9.21299,1.16693 -15.7394,9.58543 -14.5728,18.7992 1.16614,9.21378 9.58504,15.7386 18.7988,14.5724 9.75236,-1.23425 15.7461,-9.49803 14.5724,-18.7984 -1.16575,-9.21339 -9.58465,-15.7394 -18.7984,-14.5732zm18.7028 13.9201l-31.8008 9.95472m30.7795 -13.5622l-31.9823 10.0512";

  var FizzenSpringScrew =  // fil2
"M157.892 220.541c-4.59764,-0.00393701 -8.32323,-3.73543 -8.31929,-8.33307 0.00354331,-4.59764 3.73543,-8.32362 8.33307,-8.31969 4.59764,0.00354331 8.32323,3.73543 8.31969,8.33307 -0.00393701,4.59764 -3.73583,8.32323 -8.33346,8.31969zm-3.21024 -16.0307l2.67913 15.9339m1.02835 -16.5413l2.65157 15.9311";

  var FizzenScrew =  //  fil2
"M159.393 182.756c-3.64921,2.79646 -8.87677,2.10512 -11.6732,-1.54449 -2.79646,-3.64921 -2.10512,-8.87717 1.54449,-11.6736 3.64921,-2.79646 8.87677,-2.10472 11.6736,1.54449 2.79646,3.64961 2.10433,8.87717 -1.54488,11.6736zm-12.3075 -10.7614l11.8272 11.0083m-9.25591 -13.7476l11.8035 11.0228";

  var FizzenOutline =  // fil1
"M194.648 156.685c4.20315,-22.9618 11.5949,-53.3291 26.5079,-69.3909 3.58346,-3.85945 5.98898,-4.85512 7.50472,-6.62362 1.09843,-1.2815 1.71772,-1.87362 2.81299,-1.15945 1.44252,0.941339 0.764173,2.25079 -1.85197,7.02874 -2.61614,4.77795 -6.31457,10.0256 -13.1248,30.2862 -6.73858,20.048 -6.95827,45.176 -9.97087,48.1594 -0.629528,0.623228 -20.7264,1.06969 -41.0957,1.92835 -4.03307,-0.00551181 -2.01772,0.127953 -1.1378,6.32244 0.879921,6.19449 -1.00433,11.4661 -8.63937,12.9157 -1.18622,0.225591 -4.02047,0.0240157 -5.39803,1.70354 -0.798425,0.972835 -0.498031,3.74331 -2.12598,3.61457 -0.932677,-0.0740157 -2.00866,-1.77677 -2.03386,-4.79252 -0.0192913,-2.23425 -1.22677,-4.96142 -1.83386,-6.17756 -2.41063,-4.8315 0.927953,-12.8126 5.19252,-15.7307 -8.70512,3.11063 -16.948,1.30197 -19.7374,-3.62244 -2.96299,-5.2311 -1.43071,-12.3209 4.07835,-13.2173 2.21417,-0.360236 -1.72087,5.93622 4.55315,7.90394 8.31693,2.60827 13.1945,-4.16417 23.3579,-1.76654 8.05551,1.90039 17.3677,1.50866 32.9421,2.61811z";

  var FizzenHighlights = //  fil0  no fill
"M227.918 83.3776c-18.0177,30.9732 -21.2161,54.5024 -24.5689,80.4898";

  var FizzenPanCover =  //  fil0  no fill
"M204.647 164.954c-9.1378,-9.38583 -25.8571,-9.05118 -34.05,1.46772";

  var UpperFizzenSpring =  //  fil1
"M94.9551 208.668c-0.222835,-0.374803 -0.347244,-0.81063 -0.34685,-1.26654 0.000787402,-0.885827 0.474409,-1.70433 1.24173,-2.14685 0.493307,-0.329921 1.96654,-0.812205 5.98543,-1.30039 16.0154,-1.94646 56.0346,-9.31575 68.7016,-15.6957 2.70157,-1.36102 1.85472,-3.73898 -1.0122,-2.44488 -13.4327,6.05984 -48.7256,11.5906 -72.4299,13.5929 -1.50551,0.127165 -2.93425,0.452362 -4,1.06772 -2.4748,1.42638 -4.00118,4.06614 -4.00354,6.92283 -0.0011811,1.68071 0.524016,3.27244 1.44331,4.5878l4.42047 -3.31693z";

  var UpperFizzenSpringOutline =  //  fil0  no fill
"M90.5346 211.985c-0.919291,-1.31535 -1.44449,-2.90709 -1.44331,-4.5878 0.0023622,-2.85669 1.52874,-5.49646 4.00354,-6.92283 1.06575,-0.615354 2.49449,-0.940551 4,-1.06772 23.7043,-2.00236 58.9972,-7.53307 72.4299,-13.5929 2.86693,-1.29409 3.71378,1.08386 1.0122,2.44488 -12.6669,6.37992 -52.6862,13.7492 -68.7016,15.6957 -4.0189,0.488189 -5.49213,0.970472 -5.98543,1.30039 -0.767323,0.44252 -1.24094,1.26102 -1.24173,2.14685 -0.000393701,0.455906 0.124016,0.891732 0.34685,1.26654";

  var LowerFizzenSpring =  //   fil1
"M146.187 208.688c-3.95394,2.07165 -18.5094,1.42559 -44.7075,1.74724 -3.18189,0.0389764 -4.89685,-0.56378 -5.24055,-0.701969 -0.979528,-0.357087 -1.6315,-1.28937 -1.63071,-2.33228 0.000393701,-0.442913 0.119291,-0.868504 0.333465,-1.23937l-4.77598 -2.7626c-0.690945,1.19528 -1.07323,2.56929 -1.07441,3.99764 -0.00275591,3.36142 2.09882,6.36693 5.2563,7.5189 0.907874,0.307874 2.5878,0.578346 4.75591,0.539764 31.3567,-0.561811 43.076,-1.56457 47.0776,0.266535 4.00197,1.8311 5.09094,6.59961 11.2323,6.5689 6.14134,-0.0311024 9.39606,-3.43346 11.9035,-5.8811 2.55945,-2.49921 3.8811,3.54331 7.29094,3.1689 3.85787,-0.424016 7.12244,-4.04882 11.3657,-4.66575 4.56732,-0.663386 13.928,0.224016 13.7441,-2.66339 0.188189,-2.88661 -9.17323,-2.01417 -13.7398,-2.68543 -4.24252,-0.623228 -7.50079,-4.25354 -11.3579,-4.68386 -3.40984,-0.379921 -4.74094,5.66024 -7.29646,3.15709 -2.50354,-2.45157 -5.75276,-5.85945 -11.8941,-5.9 -6.14134,-0.0409449 -7.23819,4.72598 -11.2425,6.55079z";


//== Assemble component objects into Arrays of Cobj ==

  function makePlateOutside(gc)
  {
    var plateObj = new Cobj(svgToCgoRHC(Plate, -xOfs, -yOfs), "SHAPE", {fillColor:fil3, border:true}),
        panObj = new Cobj(svgToCgoRHC(Pan, -xOfs, -yOfs), "PATH"),
        searHole = new Cobj(shapeDefs.circle(2*4.5), "PATH"),
        //some extra bits that don't rotate
        searSpringHole = new Cobj(shapeDefs.circle(2*4.5), "PATH"),
        lwrFizzSpring = new Cobj(svgToCgoRHC(LowerFizzenSpring, -xOfs, -yOfs), "SHAPE", {fillColor:fil1, border:true});

    searHole.translate(searCxOfs, -searCyOfs);
    searSpringHole.translate(328.47-xOfs, -(180.85-yOfs));
    plateObj.scale(-1, 1);
    panObj.scale(-1, 1);
    searHole.scale(-1, 1);
    searSpringHole.scale(-1, 1);
    lwrFizzSpring.scale(-1, 1);

    return [plateObj, panObj, searHole, searSpringHole, lwrFizzSpring];
  }

  function makeFizzenOutside(gc)
  {
    var fizzenOut = new Cobj(svgToCgoRHC(FizzenOutline, -fizzenCx, -fizzenCy), "SHAPE", {fillColor:fil1, border:true}),
        fizzHiLites = new Cobj(svgToCgoRHC(FizzenHighlights, -fizzenCx, -fizzenCy), "PATH"),
        fizzPanCvr = new Cobj(svgToCgoRHC(FizzenPanCover, -fizzenCx, -fizzenCy), "PATH");

    fizzenOut.scale(-1, 1);
    fizzHiLites.scale(-1, 1);
    fizzPanCvr.scale(-1, 1);

    return [fizzenOut, fizzHiLites, fizzPanCvr];
  }

  function makeCockOutside(gc)
  {
    var flintScrewObj = new Cobj(svgToCgoRHC(FlintScrew, -cockCx, -cockCy), "SHAPE", {fillColor:fil3, border:true}),
        cockOutlineObj = new Cobj(svgToCgoRHC(CockOutline, -cockCx, -cockCy), "SHAPE", {fillColor:fil1, border:true}),
        cockHiLitesObj = new Cobj(svgToCgoRHC(CockHighlights, -cockCx, -cockCy), "PATH"),
        flintObj = new Cobj(svgToCgoRHC(Flint, -cockCx, -cockCy), "SHAPE", {fillColor:fil3, border:true}),
        leatherObj = new Cobj(svgToCgoRHC(Leather, -cockCx, -cockCy), "SHAPE", {fillColor:fil2, border:true}),
        threadObj = new Cobj(svgToCgoRHC(ThreadOutside, -cockCx, -cockCy), "PATH");

    flintScrewObj.scale(-1, 1);
    cockOutlineObj.scale(-1, 1);
    cockHiLitesObj.scale(-1, 1);
    flintObj.scale(-1, 1);
    leatherObj.scale(-1, 1);
    threadObj.scale(-1, 1);

    return [flintScrewObj, cockOutlineObj, cockHiLitesObj, flintObj, leatherObj, threadObj];
  }

  function makeFizzenSpring(gc)
  {
    var uprFizzSpring = new Cobj(svgToCgoRHC(UpperFizzenSpring, -fizzenSpringCx, -fizzenSpringCy), "SHAPE", {
        fillColor:fil1, border:true, strokeColor:fil1}),
        fizzSpringOL = new Cobj(svgToCgoRHC(UpperFizzenSpringOutline, -fizzenSpringCx, -fizzenSpringCy), "PATH");

    uprFizzSpring.scale(-1, 1);
    fizzSpringOL.scale(-1, 1);

    return [uprFizzSpring, fizzSpringOL];
  }

  function makeOutScrews(gc)    // static layer above the turning bits holding static screws
  {
    var fizzScrewObj = new Cobj(svgToCgoRHC(FizzenScrew, -xOfs, -yOfs), "SHAPE", {fillColor:fil2, border:true}),
        cockScrewObj = new Cobj(svgToCgoRHC(CockScrew, -xOfs, -yOfs), "SHAPE", {fillColor:fil2, border:true}),
        fSpringScrewObj = new Cobj(svgToCgoRHC(FizzenSpringScrew, -xOfs, -yOfs), "SHAPE", {fillColor:fil2, border:true});

    fizzScrewObj.scale(-1, 1);
    cockScrewObj.scale(-1, 1);
    fSpringScrewObj.scale(-1, 1);

    return [fizzScrewObj, cockScrewObj, fSpringScrewObj];
  }
