//
//  TermsofService.swift
//  imposter
//
//  Created by Tornike Despotashvili on 8/30/25.
//

import SwiftUI

struct TermsofService: View {
  @AppStorage("appLanguage") private var appLanguage: LanguageEnum = .ka
  
  var body: some View {
    ScrollView {
      Text("Terms of Service")
        .customFontSytle(weight: .bold, size: 20)
        .padding(.top, 20)
      
      VStack {
        switch appLanguage {
        case .ka:
          Text("""
                კეთილი იყოს თქვენი მობრძანება Imposter-ში! ჩვენი მიზანია შემოგთავაზოთ სახალისო და მიმზიდველი თამაში. ამ წესებისა და პირობების (შემდგომში "პირობები") გამოყენებით, თქვენ ეთანხმებით მათ. გთხოვთ, ყურადღებით წაიკითხოთ ისინი.
              
              **1. ხელშეკრულების მიღება**
              
                ამ აპლიკაციის (შემდგომში "აპლიკაცია") ჩამოტვირთვის, ინსტალაციის ან გამოყენების გზით, თქვენ ეთანხმებით ამ პირობებს. თუ არ ეთანხმებით ამ პირობებს, არ უნდა გამოიყენოთ აპლიკაცია.
              
              **2. მომსახურების მიწოდება**
              
                Imposter არის თამაში, რომელიც მოიცავს შემდეგ კატეგორიებს:
              
              - **უფასო კატეგორიები:** სამი კატეგორია ხელმისაწვდომია უფასოდ.
              - **პრემიუმ კატეგორიები:** დამატებითი კატეგორიები ხელმისაწვდომია ფასიანი გამოწერით.
              
              **3. რეკლამები**
              
                აპლიკაციაში შეიძლება გამოჩნდეს გუგლის ბანერების სტილის რეკლამები, რათა მხარი დაუჭიროს უფასო კონტენტს.
              
              **4. გამოწერა**
              
                გამოწერის სარგებელი: გამოწერის შეძენით, მომხმარებლები იღებენ წვდომას ყველა კატეგორიაზე და აპლიკაციიდან ქრება ყველა რეკლამა.
              
              **გამოწერის ფასები:**
              **ყოველთვიური გამოწერა:** 4.99 აშშ დოლარი (ან ექვივალენტი ადგილობრივ ვალუტაში).
              
              - **ყოველწლიური გამოწერა:** 19.99 აშშ დოლარი (ან ექვივალენტი ადგილობრივ ვალუტაში).
              
              - **ავტომატური განახლება:** გამოწერა ავტომატურად განახლდება ყოველი ბილინგის პერიოდის ბოლოს (თვიური ან წლიური), თუ ავტომატური განახლება არ იქნება გამორთული ბილინგის პერიოდის დასრულებამდე მინიმუმ 24 საათით ადრე. თქვენი ანგარიშიდან თანხა ჩამოიჭრება მიმდინარე პერიოდის დასრულებამდე 24 საათის განმავლობაში, განახლების ღირებულების მიხედვით.
              
              - **გამოწერის მართვა:** თქვენ შეგიძლიათ მართოთ თქვენი გამოწერა და გამორთოთ ავტომატური განახლება თქვენი მოწყობილობის ანგარიშის პარამეტრებში შეძენის შემდეგ.
              
              **5. აკრძალული გამოყენება**
              თქვენ ეთანხმებით, რომ არ გამოიყენებთ აპლიკაციას:
              
              - ნებისმიერი კანონის ან რეგულაციის დარღვევით.
              - აპლიკაციის ფუნქციონირების დარღვევის ან შეფერხების მიზნით.
              - ნებისმიერი მავნე ან ვირუსის შემცველი კოდის გადასაცემად.
              
              **6. ცვლილებები პირობებში**
              
                ჩვენ ვიტოვებთ უფლებას, ნებისმიერ დროს შევცვალოთ ეს პირობები ჩვენი შეხედულებისამებრ. თუ ცვლილება არსებითია, ჩვენ შეგატყობინებთ ცვლილების ძალაში შესვლამდე მინიმუმ 30 დღით ადრე. რას წარმოადგენს არსებითი ცვლილება, განისაზღვრება ჩვენი შეხედულებისამებრ.
              
              **7. კონტაქტი**
              
               თუ გაქვთ შეკითხვები ამ პირობების შესახებ, გთხოვთ, დაგვიკავშირდეთ: Tornike.despotashvili@itdc.ge
              """)
          .customFontSytle()
        case .en:
          Text("""
                        Welcome to Imposter! Our goal is to offer you a fun and engaging game. By using these terms and conditions (hereinafter "Terms"), you agree to them. Please read them carefully.
                      
                      **1. Acceptance of Agreement**
                      
                        By downloading, installing, or using this application (hereinafter "App"), you agree to these Terms. If you do not agree to these Terms, you must not use the App.
                      
                      **2. Service Provision**
                      
                        Imposter is a game that includes the following categories:
                      
                      - **Free Categories:** Three categories are available for free.
                      - **Premium Categories:** Additional categories are available through a paid subscription.
                      
                      **3. Advertisements**
                      
                        The App may display Google banner-style advertisements to support free content.
                      
                      **4. Subscription**
                      
                        Subscription Benefits: By purchasing a subscription, users gain access to all categories, and all advertisements are removed from the App.
                      
                      **Subscription Prices:**
                      **Monthly Subscription:** $4.99 USD (or equivalent in local currency).
                      
                      - **Annual Subscription:** $19.99 USD (or equivalent in local currency).
                      
                      - **Automatic Renewal:** Subscriptions automatically renew at the end of each billing period (monthly or annually) unless auto-renewal is turned off at least 24 hours before the end of the current billing period. Your account will be charged for renewal within 24 hours prior to the end of the current period, at the cost of renewal.
                      
                      - **Subscription Management:** You can manage your subscription and turn off auto-renewal in your device's account settings after purchase.
                      
                      **5. Prohibited Uses**
                      
                      You agree not to use the App:
                      
                      - In any way that violates any applicable law or regulation.
                      - To disrupt or interfere with the functionality of the App.
                      - To transmit any harmful or virus-containing code.
                      
                      **6. Changes to Terms**
                      
                        We reserve the right, at our sole discretion, to modify these Terms at any time. If a revision is material, we will provide at least 30 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.
                      
                      **7. Contact Us**
                      
                       If you have any questions about these Terms, please contact us: Tornike.despotashvili@itdc.ge
                      """)
          .customFontSytle()
        }
      }
      .padding()
    }
    .scrollIndicators(.hidden)
    .background(.mainBlack)
  }
}

#Preview {
  TermsofService()
}

