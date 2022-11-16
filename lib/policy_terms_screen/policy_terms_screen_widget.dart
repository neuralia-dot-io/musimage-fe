import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PolicyTermsScreenWidget extends StatefulWidget {
  const PolicyTermsScreenWidget({Key? key}) : super(key: key);

  @override
  _PolicyTermsScreenWidgetState createState() =>
      _PolicyTermsScreenWidgetState();
}

class _PolicyTermsScreenWidgetState extends State<PolicyTermsScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF241F1A),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Privacy & Policy',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF151212),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SelectionArea(
                        child: Text(
                      'terms & conditions\n\nPurpose Of Research\n“You”, “your”, and “user” are words in this Terms of Use that are used interchangeably and mean anyone, whether an individual, natural person or under or for any legal entity, whether plural or singular, that accesses and/or uses Musimage services. For purposes of this Terms of Use, these words also include “Affirmer” as that word is defined and used in the CC0 1.0 Universal Public Domain Dedication (available at https://creativecommons.org/publicdomain/zero/1.0/ and hereby incorporated by reference as though fully set forth herein). Any such user hereby warrants that the user is of full legal age to contract in their respective legal jurisdiction.\n\nMusimage is run by Neuralia to provide creative generative tools for everyone to express their creativity.\nPrivacy\nNeuralia understands users in the European Union may access and use Musimage. Neuralia takes precautions to protect users’ personal data in a manner compliant with the General Data Protection Regulation. To exercise your data rights under GDPR, Musimage can be contacted at dev@neuralia.io with requests or concerns.\n\nMusimage agrees never to sell or release to any 3rd party the private information described below in “Private Information Stored,”, except in accord with any public sale, merger, or other acquisition of Neuralia or as required by law. Subsequent parties who obtain said private information through public sale, merger, or acquisition shall likewise be bound by the provisions described in this Terms of Service, or if this agreement cannot be upheld, Neuralia will destroy such private information.\nPrivate Information Stored\n-The inputs provided by each unique user for each unique prompt\n-The unique social IDs of the user submitting prompt, if provided and applicable\n\n**By your use of Musimage, you hereby agree to forfeit all intellectual property rights claims, worldwide, and regardless of legal jurisdiction or intellectual property law applicable therein, including forfeiture of any/all copyright claim(s), to the API requests and images or artifacts or other response content created during the API transaction (collectively, the “Content”) you provide or receive through your use of Musimage.\n\nCopyright\nThe public domain is not a unified concept across legal jurisdictions, thus the specific affirmation you make when using the Musimage services is that of the CC0 1.0 Universal Public Domain Dedication [available at https://creativecommons.org/publicdomain/zero/1.0/]. Any/all users (includes “Affirmers” as described in the Universal Public Domain Dedication) specifically agree to the entirety of the referenced and incorporated Universal Public Domain Dedication, which includes, but is not limited to, the following:\n\nOwnership Rights\n\nDepending on your User Package, you retain your ownership rights to any Content you submit, post or display on or through the Services. You own your Content (and your incorporated audio, photos and videos are considered part of the Content). However, we do require you to grant certain rights to Neuralia and other users of the Service, as described below.\n\nBy submitting, posting or displaying Content on or through the Services and/or those that may find their way into our training data through accidental web-scraping, independent of the Services or your User Package, you grant Neuralia  perpetual, irrevocable, worldwide, transferable, sub-licensable, non-exclusive, royalty-free license to use, copy, reproduce, process, adapt, modify, publish, transmit, display and distribute such Content in any and all media or distribution methods now known or later developed (for clarity, these rights include, for example, curating, transforming and/or translating ). This license authorises us to make your Content available to the rest of the world and to let others do the same.\n\nYou agree that this license includes the right for Neuralia to provide, promote, and improve the Services and to make Content submitted to or through the Services available to other companies, organisations or individuals for the syndication, broadcast, distribution, promotion or publication of such Content on other media and services, subject to our terms and conditions for such Content use. Such additional uses by Neuralia or other companies, organisations or individuals, is made with no compensation paid to you with respect to the Content that you submit, post, transmit or otherwise make available through the Services as the use of the Services by you is hereby agreed as being sufficient compensation for the Content and grant of rights herein.\n\nYou also grant each other user of the Service a worldwide, non-exclusive, royalty-free licence to access your Content through the Service, and to use that Content (including to reproduce, distribute, modify, display, and perform it) only as enabled by a feature of the Service.\n\nThe license you grant Neuralia would survive any termination, including for the reason of the Content being removed, where the operation of the Service can justify retention, or if use of Content is permitted to be retained before its removal, or where the Content finds its way into our training data through accidental web-scraping or if the law requires otherwise. In any event, removal of Content by the user, including opt-out users, would not require Neuralia to: (a) recall Content that is being used by other users within any viewing functionality of the Service; or (b) delete copies we reasonably would need to keep for legal purposes.\n\n2. Waiver. To the greatest extent permitted by, but not in contravention of, applicable law, Affirmer hereby overtly, fully, permanently, irrevocably and unconditionally waives, abandons, and surrenders all of Affirmer\'s Copyright and Related Rights and associated claims and causes of action, whether now known or unknown (including existing as well as future claims and causes of action), in the Work (i) in all territories worldwide, (ii) for the maximum duration provided by applicable law or treaty (including future time extensions), (iii) in any current or future medium and for any number of copies, and (iv) for any purpose whatsoever, including without limitation commercial, advertising or promotional purposes (the \"Waiver\"). Affirmer makes the Waiver for the benefit of each member of the public at large and to the detriment of Affirmer\'s heirs and successors, fully intending that such Waiver shall not be subject to revocation, rescission, cancellation, termination, or any other legal or equitable action to disrupt the quiet enjoyment of the Work by the public as contemplated by Affirmer\'s express Statement of Purpose. \n\nAll users, by use of Musimage hereby acknowledge having read and accepted the full CC0 1.0 Universal Public Domain Dedication (available at https://creativecommons.org/publicdomain/zero/1.0/), which includes, but is not limited to, the foregoing waiver of intellectual property rights with respect to any Content. User, by use of Musimage and the Musimage service, acknowledges understanding that such waiver also includes waiver of any such user’s expectation and/or claim to any absolute, unconditional right to reproduce, copy, prepare derivate works, distribute, sell, perform, and/or display, as applicable, and further that any such user acknowledges no authority or right to deny permission to others to do the same with respect to the Content. Any such user hereby waives and does not hold any rights whatsoever and regardless of legal jurisdiction to or in the Content. Further, all such users hereby acknowledge that this Terms of Use will be binding upon any of the user’s successors, heirs, agents, affiliates, administrators, representatives, attorneys, executors, divisions, and assigns, now and forever. This waiver further irrevocably and forever releases, acquits, and discharges Neuralia from any and all claims, demands, charges, complaints, controversies, agreements, promises, and causes of action of any kind or nature whatsoever, both at law and in equity, known or unknown, suspected or unsuspected, arising out of and relating in any way to the Content.\n\nNote, that while users have forfeited copyright (and any/all intellectual property right claims) on these images, they are still public domain and can be used by anyone for any purpose, including by the user. Feel free to use images from Musimage for anything, including commercial purposes.\nPrompt & Input Guidelines\nMusimage should not be used for:\n\n- In any way that violates any applicable national, federal, state, local or international law or regulation;\n- For the purpose of exploiting, harming or attempting to exploit or harm minors in any way;\n- To generate or disseminate verifiably false information and/or content with the purpose of harming others;\n- To generate or disseminate personal identifiable information that can be used to harm an individual;\n- To defame, disparage or otherwise harass others;\n- For fully automated decision making that adversely impacts an individual’s legal rights or otherwise creates or modifies a binding, enforceable obligation;\n- For any use intended to or which has the effect of discriminating against or harming individuals or groups based on online or offline social behavior or known or predicted personal or personality characteristics;\n- To exploit any of the vulnerabilities of a specific group of persons based on their age, social, physical or mental characteristics, in order to materially distort the behavior of a person pertaining to that group in a manner that causes or is likely to cause that person or another person physical or psychological harm;\n- For any use intended to or which has the effect of discriminating against individuals or groups based on legally protected characteristics or categories;\n- To provide medical advice and medical results interpretation;\n- To generate or disseminate information for the purpose to be used for administration of justice, law enforcement, immigration or asylum processes, such as predicting an individual will commit fraud/crime commitment (e.g. by text profiling, drawing causal relationships between assertions made in documents, indiscriminate and arbitrarily-targeted use).\n- Copyrighted or trademarked material should be avoided in prompts.\nIndemnity Clause\nUsers, by use of Musimage, hereby agree to indemnify and hold harmless Neuralia against any and all claims, demands, charges, complaints, controversies, and causes of action of any kind or nature whatsoever, both at law and in equity, known or unknown, suspected or unsuspected (hereinafter “Claims”), arising out of and relating in any way to intellectual property infringement claims made against Neuralia with respect to your Content if such Claims inure to your benefit in any way and also to hold harmless and indemnify Neuralia against all Claims relating in any way to your use of Musimage. This indemnity includes reimbursement to Neuraliafor any applicable court costs and expenses of litigation, including but not limited to reasonable attorneys’ fees, and reimbursement for any losses and liabilities of Neuralia, including but not limited to, judgments, settlements, fees, costs, expenses, legal debts, legal obligations, and any third-party Claims against Neuralia.\n\nNeuralia makes no warranties or representations with respect to user Content and is not responsible for unauthorized use. Users are responsible for using Musimage only as authorized and in compliance with applicable laws of the jurisdictions in which such users are domiciled, reside, or are located at the time of such use. \n\nChoice of Law\nClicking “Yes, and understand all work with Musimage is public domain” indicates the user is of legal age to contract in the user’s jurisdiction and indicates the user’s fully informed acknowledgement, understanding, and agreement to the entirety of this Terms of Use and anything incorporated herein by reference. Clicking “No” will end the bot’s signup dialogue. Use of Musimage without the user’s acceptance of this Terms of Use and all incorporated provisions constitutes unauthorized use for which the user disclaims any/all potential or actual right to relief against Neuralia, regardless of the legal jurisdiction of Neuralia or the user’s domicile, residence, or location.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
