//
//  PrivacyPolicyView.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//


import SwiftUI

struct PrivacyPolicyView: View {
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka

  var body: some View {
    ScrollView {
      Text("Pricacy Policy")
        .customFontSytle(color: .mainWhite, weight: .bold, size: 20)
        .padding(.top, 20)
      
      VStack() {
        switch appLanguage {
        case .ka:
          Text("""
                      [თქვენი კომპანიის სახელი] ("ჩვენ", "ჩვენი" ან "ჩვენ") ოპერირებს Imposter მობილურ აპლიკაციას (შემდგომში "სერვისი").
                      
                      ეს გვერდი გაცნობებთ ჩვენს პოლიტიკას პერსონალურ მონაცემებთან დაკავშირებით, როდესაც იყენებთ ჩვენს სერვისს.
                      
                      **1. მონაცემთა შეგროვება და გამოყენება**
                      
                      ჩვენ გვჯერა, რომ თქვენი კონფიდენციალურობა უმნიშვნელოვანესია. შესაბამისად, Imposter-ის გამოყენებისას:
                      
                      - **ჩვენ არ ვაგროვებთ არანაირ პერსონალურ საიდენტიფიკაციო ინფორმაციას** (როგორიცაა თქვენი სახელი, ელფოსტის მისამართი, ტელეფონის ნომერი ან ნებისმიერი სხვა ინფორმაცია, რომლითაც შესაძლებელია თქვენი იდენტიფიცირება).
                      - **ჩვენ არ ვაგროვებთ გეოლოკაციის მონაცემებს.**
                      - **ჩვენ არ ვაგროვებთ თქვენი მოწყობილობის შესახებ ინფორმაციას, გარდა ზოგადი გამოყენების მონაცემებისა**, რომლებიც აუცილებელია აპლიკაციის ფუნქციონირებისთვის და რომლებიც არ უკავშირდება თქვენს პირად იდენტობას.
                      - **ჩვენ არ ვთხოვთ, არ ვაგროვებთ და არ ვინახავთ რაიმე სახის მონაცემებს ჩვენი მომხმარებლებისგან.**
                      
                      ჩვენი სერვისის მიზანია შემოგთავაზოთ გართობა თქვენი კონფიდენციალურობის დარღვევის გარეშე. თქვენი მონაცემები რჩება თქვენს მოწყობილობაზე და არ გადაეცემა ჩვენს სერვერებს ან მესამე მხარეს.
                      
                      **2. ქუქი-ფაილები და თვალთვალის ტექნოლოგიები**
                      
                      ჩვენ არ ვიყენებთ ქუქი-ფაილებს.
                      
                      **3. სერვისის პროვაიდერები**
                      
                      ჩვენ არ ვიყენებთ მესამე მხარის სერვისებს, რომლებსაც ექნებათ წვდომა თქვენს პერსონალურ მონაცემებზე, რადგან ჩვენ არ ვაგროვებთ ასეთ მონაცემებს. რეკლამები (როგორიცაა Google-ის ბანერები, როგორც მითითებულია ჩვენს Terms of Service-ში) შეიძლება გამოჩნდეს აპლიკაციაში და მათ შეიძლება ჰქონდეთ საკუთარი კონფიდენციალურობის პოლიტიკა, რომელზეც ჩვენ არ გვაქვს კონტროლი.
                      
                      **4. მონაცემთა უსაფრთხოება**
                      
                      მიუხედავად იმისა, რომ ჩვენ არ ვაგროვებთ პერსონალურ მონაცემებს, ჩვენ ვიღებთ ზომებს ჩვენი სერვისის უსაფრთხოების უზრუნველსაყოფად.
                      
                      **5. ამ კონფიდენციალურობის პოლიტიკის ცვლილებები**
                      
                      ჩვენ შეიძლება დროდადრო განვაახლოთ ჩვენი კონფიდენციალურობის პოლიტიკა. ჩვენ შეგატყობინებთ ნებისმიერი ცვლილების შესახებ ამ გვერდზე ახალი კონფიდენციალურობის პოლიტიკის განთავსებით.
                      
                      გირჩევთ, პერიოდულად გადახედოთ ამ კონფიდენციალურობის პოლიტიკას ნებისმიერი ცვლილებისთვის. ამ კონფიდენციალურობის პოლიტიკაში ცვლილებები ძალაში შედის ამ გვერდზე გამოქვეყნებისთანავე.
                      
                      **5. კონტაქტი**
                      
                      თუ გაქვთ შეკითხვები ამ კონფიდენციალურობის პოლიტიკის შესახებ, გთხოვთ, დაგვიკავშირდეთ: Tornike.despotashvili@itdc.ge
                      """)
          .customFontSytle()
        case .en:
          Text("""
                              [Your Company Name] ("we", "our", or "us") operates the Imposter mobile application (hereinafter "Service").
                              
                              This page informs you of our policies regarding personal data when you use our Service.
                              
                              **1. Data Collection and Use**
                              
                              We believe your privacy is paramount. Accordingly, when using Imposter:
                              
                              - **We do not collect any personally identifiable information** (such as your name, email address, phone number, or any other information that could identify you).
                              - **We do not collect geolocation data.**
                              - **We do not collect information about your device, other than general usage data** which is necessary for the App's functionality and is not linked to your personal identity.
                              - **We do not request, collect, or store any type of data from our users.**
                              
                              Our Service aims to offer you entertainment without infringing on your privacy. Your data remains on your device and is not transmitted to our servers or third parties.
                              
                              **2. Cookies and Tracking Technologies**
                              
                              We do not use cookies.
                              
                              **3. Service Providers**
                              
                              We do not use third-party services that would have access to your personal data, as we do not collect such data. Advertisements (such as Google banners, as stated in our Terms of Service) may appear in the App, and they may have their own privacy policies over which we have no control.
                              
                              **4. Data Security**
                              
                              Although we do not collect personal data, we take measures to ensure the security of our Service.
                              
                              **5. Changes to This Privacy Policy**
                              
                              We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.
                              
                              You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.
                              
                              **5. Contact Us**
                              
                              If you have any questions about this Privacy Policy, please contact us: Tornike.despotashvili@itdc.ge
                              """)
          .customFontSytle()
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .padding()
    }
    .scrollIndicators(.hidden)
    .background(.mainBlack)
  }
}

#Preview {
  PrivacyPolicyView()
}

