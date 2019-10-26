// To parse this JSON data, do
//
//     final flUser = flUserFromJson(jsonString);

import 'dart:convert';

class FlUser {
  String requestId;
  Result result;
  StatusEnum status;

  FlUser({
    this.requestId,
    this.result,
    this.status,
  });

  factory FlUser.fromRawJson(String str) => FlUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FlUser.fromJson(Map<String, dynamic> json) => FlUser(
        requestId: json["request_id"] == null ? null : json["request_id"],
        result: Result.fromJson(json["result"]),
        status: statusEnumValues.map[json["status"]],
      );

  Map<String, dynamic> toJson() => {
        "request_id": requestId == null ? null : requestId,
        "result": result.toJson(),
        "status": statusEnumValues.reverse[status],
      };
}

class Result {
  AccountBalances accountBalances;
  String avatar;
  String avatarCdn;
  String avatarLarge;
  String avatarLargeCdn;
  List<Badge> badges;
  BidQualityDetails bidQualityDetails;
  ChosenRole chosenRole;
  bool closed;
  Map<String, dynamic> coverImage;
  DateOfBirth dateOfBirth;
  DepositMethods depositMethods;
  String displayName;
  String email;
  EmployerReputation employerReputation;
  Map<String, dynamic> endorsements;
  String firstName;
  bool forceVerify;
  double hourlyRate;
  double id;
  bool isActive;
  bool isLocal;
  List<JobElement> jobs;
  String lastName;
  bool limitedAccount;
  Location location;
  MarketingMobileNumber marketingMobileNumber;
  MembershipPackage membershipPackage;
  Map<String, dynamic> mobileTracking;
  double portfolioCount;
  bool preferredFreelancer;
  PrimaryCurrency primaryCurrency;
  String primaryLanguage;
  String profileDescription;
  List<Qualification> qualifications;
  double recommendations;
  double registrationDate;
  Reputation reputation;
  double responsiveness;
  Role role;
  List<dynamic> searchLanguages;
  StatusClass status;
  SupportStatus supportStatus;
  bool suspended;
  String tagline;
  Timezone timezone;
  String username;

  Result({
    this.accountBalances,
    this.avatar,
    this.avatarCdn,
    this.avatarLarge,
    this.avatarLargeCdn,
    this.badges,
    this.bidQualityDetails,
    this.chosenRole,
    this.closed,
    this.coverImage,
    this.dateOfBirth,
    this.depositMethods,
    this.displayName,
    this.email,
    this.employerReputation,
    this.endorsements,
    this.firstName,
    this.forceVerify,
    this.hourlyRate,
    this.id,
    this.isActive,
    this.isLocal,
    this.jobs,
    this.lastName,
    this.limitedAccount,
    this.location,
    this.marketingMobileNumber,
    this.membershipPackage,
    this.mobileTracking,
    this.portfolioCount,
    this.preferredFreelancer,
    this.primaryCurrency,
    this.primaryLanguage,
    this.profileDescription,
    this.qualifications,
    this.recommendations,
    this.registrationDate,
    this.reputation,
    this.responsiveness,
    this.role,
    this.searchLanguages,
    this.status,
    this.supportStatus,
    this.suspended,
    this.tagline,
    this.timezone,
    this.username,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        accountBalances: json["account_balances"] == null
            ? null
            : AccountBalances.fromJson(json["account_balances"]),
        avatar: json["avatar"] == null ? null : json["avatar"],
        avatarCdn: json["avatar_cdn"] == null ? null : json["avatar_cdn"],
        avatarLarge: json["avatar_large"] == null ? null : json["avatar_large"],
        avatarLargeCdn:
            json["avatar_large_cdn"] == null ? null : json["avatar_large_cdn"],
        badges: json["badges"] == null
            ? null
            : List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
        bidQualityDetails: json["bid_quality_details"] == null
            ? null
            : BidQualityDetails.fromJson(json["bid_quality_details"]),
        chosenRole: json["chosen_role"] == null
            ? null
            : chosenRoleValues.map[json["chosen_role"]],
        closed: json["closed"] == null ? null : json["closed"],
        coverImage: json["cover_image"] == null
            ? null
            : Map.from(json["cover_image"])
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        dateOfBirth: json["date_of_birth"] == null
            ? null
            : DateOfBirth.fromJson(json["date_of_birth"]),
        depositMethods: json["deposit_methods"] == null
            ? null
            : DepositMethods.fromJson(json["deposit_methods"]),
        displayName: json["display_name"] == null ? null : json["display_name"],
        email: json["email"] == null ? null : json["email"],
        employerReputation: json["employer_reputation"] == null
            ? null
            : EmployerReputation.fromJson(json["employer_reputation"]),
        endorsements: json["endorsements"] == null
            ? null
            : Map.from(json["endorsements"])
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        firstName: json["first_name"] == null ? null : json["first_name"],
        forceVerify: json["force_verify"] == null ? null : json["force_verify"],
        hourlyRate:
            json["hourly_rate"] == null ? null : json["hourly_rate"].toDouble(),
        id: json["id"].toDouble(),
        isActive: json["is_active"] == null ? null : json["is_active"],
        isLocal: json["is_local"] == null ? null : json["is_local"],
        jobs: json["jobs"] == null
            ? null
            : List<JobElement>.from(
                json["jobs"].map((x) => JobElement.fromJson(x))),
        lastName: json["last_name"] == null ? null : json["last_name"],
        limitedAccount:
            json["limited_account"] == null ? null : json["limited_account"],
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        marketingMobileNumber: json["marketing_mobile_number"] == null
            ? null
            : MarketingMobileNumber.fromJson(json["marketing_mobile_number"]),
        membershipPackage: json["membership_package"] == null
            ? null
            : MembershipPackage.fromJson(json["membership_package"]),
        mobileTracking: json["mobile_tracking"] == null
            ? null
            : Map.from(json["mobile_tracking"])
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        portfolioCount: json["portfolio_count"] == null
            ? null
            : json["portfolio_count"].toDouble(),
        preferredFreelancer: json["preferred_freelancer"] == null
            ? null
            : json["preferred_freelancer"],
        primaryCurrency: json["primary_currency"] == null
            ? null
            : PrimaryCurrency.fromJson(json["primary_currency"]),
        primaryLanguage:
            json["primary_language"] == null ? null : json["primary_language"],
        profileDescription: json["profile_description"] == null
            ? null
            : json["profile_description"],
        qualifications: json["qualifications"] == null
            ? null
            : List<Qualification>.from(
                json["qualifications"].map((x) => Qualification.fromJson(x))),
        recommendations: json["recommendations"] == null
            ? null
            : json["recommendations"].toDouble(),
        registrationDate: json["registration_date"] == null
            ? null
            : json["registration_date"].toDouble(),
        reputation: json["reputation"] == null
            ? null
            : Reputation.fromJson(json["reputation"]),
        responsiveness: json["responsiveness"] == null
            ? null
            : json["responsiveness"].toDouble(),
        role: json["role"] == null ? null : roleValues.map[json["role"]],
        searchLanguages: json["search_languages"] == null
            ? null
            : List<dynamic>.from(json["search_languages"].map((x) => x)),
        status: json["status"] == null
            ? null
            : StatusClass.fromJson(json["status"]),
        supportStatus: json["support_status"] == null
            ? null
            : SupportStatus.fromJson(json["support_status"]),
        suspended: json["suspended"] == null ? null : json["suspended"],
        tagline: json["tagline"] == null ? null : json["tagline"],
        timezone: json["timezone"] == null
            ? null
            : Timezone.fromJson(json["timezone"]),
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "account_balances":
            accountBalances == null ? null : accountBalances.toJson(),
        "avatar": avatar == null ? null : avatar,
        "avatar_cdn": avatarCdn == null ? null : avatarCdn,
        "avatar_large": avatarLarge == null ? null : avatarLarge,
        "avatar_large_cdn": avatarLargeCdn == null ? null : avatarLargeCdn,
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
        "bid_quality_details":
            bidQualityDetails == null ? null : bidQualityDetails.toJson(),
        "chosen_role":
            chosenRole == null ? null : chosenRoleValues.reverse[chosenRole],
        "closed": closed == null ? null : closed,
        "cover_image": coverImage == null
            ? null
            : Map.from(coverImage)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "date_of_birth": dateOfBirth == null ? null : dateOfBirth.toJson(),
        "deposit_methods":
            depositMethods == null ? null : depositMethods.toJson(),
        "display_name": displayName == null ? null : displayName,
        "email": email == null ? null : email,
        "employer_reputation":
            employerReputation == null ? null : employerReputation.toJson(),
        "endorsements": endorsements == null
            ? null
            : Map.from(endorsements)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "first_name": firstName == null ? null : firstName,
        "force_verify": forceVerify == null ? null : forceVerify,
        "hourly_rate": hourlyRate == null ? null : hourlyRate,
        "id": id,
        "is_active": isActive == null ? null : isActive,
        "is_local": isLocal == null ? null : isLocal,
        "jobs": jobs == null
            ? null
            : List<dynamic>.from(jobs.map((x) => x.toJson())),
        "last_name": lastName == null ? null : lastName,
        "limited_account": limitedAccount == null ? null : limitedAccount,
        "location": location == null ? null : location.toJson(),
        "marketing_mobile_number": marketingMobileNumber == null
            ? null
            : marketingMobileNumber.toJson(),
        "membership_package":
            membershipPackage == null ? null : membershipPackage.toJson(),
        "mobile_tracking": mobileTracking == null
            ? null
            : Map.from(mobileTracking)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "portfolio_count": portfolioCount == null ? null : portfolioCount,
        "preferred_freelancer":
            preferredFreelancer == null ? null : preferredFreelancer,
        "primary_currency":
            primaryCurrency == null ? null : primaryCurrency.toJson(),
        "primary_language": primaryLanguage == null ? null : primaryLanguage,
        "profile_description":
            profileDescription == null ? null : profileDescription,
        "qualifications": qualifications == null
            ? null
            : List<dynamic>.from(qualifications.map((x) => x.toJson())),
        "recommendations": recommendations == null ? null : recommendations,
        "registration_date": registrationDate == null ? null : registrationDate,
        "reputation": reputation == null ? null : reputation.toJson(),
        "responsiveness": responsiveness == null ? null : responsiveness,
        "role": role == null ? null : roleValues.reverse[role],
        "search_languages": searchLanguages == null
            ? null
            : List<dynamic>.from(searchLanguages.map((x) => x)),
        "status": status == null ? null : status.toJson(),
        "support_status": supportStatus == null ? null : supportStatus.toJson(),
        "suspended": suspended == null ? null : suspended,
        "tagline": tagline == null ? null : tagline,
        "timezone": timezone == null ? null : timezone.toJson(),
        "username": username,
      };
}

class AccountBalances {
  List<Balance> balances;
  double bidsRemaining;
  double jobChangesRemaining;
  double jobsRemaining;
  double servicePostingsRemaining;

  AccountBalances({
    this.balances,
    this.bidsRemaining,
    this.jobChangesRemaining,
    this.jobsRemaining,
    this.servicePostingsRemaining,
  });

  factory AccountBalances.fromRawJson(String str) =>
      AccountBalances.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountBalances.fromJson(Map<String, dynamic> json) =>
      AccountBalances(
        balances: json["balances"] == null
            ? null
            : List<Balance>.from(
                json["balances"].map((x) => Balance.fromJson(x))),
        bidsRemaining: json["bids_remaining"] == null
            ? null
            : json["bids_remaining"].toDouble(),
        jobChangesRemaining: json["job_changes_remaining"] == null
            ? null
            : json["job_changes_remaining"].toDouble(),
        jobsRemaining: json["jobs_remaining"] == null
            ? null
            : json["jobs_remaining"].toDouble(),
        servicePostingsRemaining: json["service_postings_remaining"] == null
            ? null
            : json["service_postings_remaining"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "balances": balances == null
            ? null
            : List<dynamic>.from(balances.map((x) => x.toJson())),
        "bids_remaining": bidsRemaining == null ? null : bidsRemaining,
        "job_changes_remaining":
            jobChangesRemaining == null ? null : jobChangesRemaining,
        "jobs_remaining": jobsRemaining == null ? null : jobsRemaining,
        "service_postings_remaining":
            servicePostingsRemaining == null ? null : servicePostingsRemaining,
      };
}

class Balance {
  double amount;
  Currency currency;

  Balance({
    this.amount,
    this.currency,
  });

  factory Balance.fromRawJson(String str) => Balance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Balance.fromJson(Map<String, dynamic> json) => Balance(
        amount: json["amount"] == null ? null : json["amount"].toDouble(),
        currency: json["currency"] == null
            ? null
            : Currency.fromJson(json["currency"]),
      );

  Map<String, dynamic> toJson() => {
        "amount": amount == null ? null : amount,
        "currency": currency == null ? null : currency.toJson(),
      };
}

class Currency {
  String code;
  String country;
  double exchangeRate;
  double id;
  bool isExternal;
  String name;
  String sign;

  Currency({
    this.code,
    this.country,
    this.exchangeRate,
    this.id,
    this.isExternal,
    this.name,
    this.sign,
  });

  factory Currency.fromRawJson(String str) =>
      Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        country: json["country"] == null ? null : json["country"],
        exchangeRate: json["exchange_rate"] == null
            ? null
            : json["exchange_rate"].toDouble(),
        id: json["id"].toDouble(),
        isExternal: json["is_external"] == null ? null : json["is_external"],
        name: json["name"] == null ? null : json["name"],
        sign: json["sign"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "country": country == null ? null : country,
        "exchange_rate": exchangeRate == null ? null : exchangeRate,
        "id": id,
        "is_external": isExternal == null ? null : isExternal,
        "name": name == null ? null : name,
        "sign": sign,
      };
}

class Badge {
  String description;
  String iconUrl;
  double id;
  String name;
  double timeAwarded;

  Badge({
    this.description,
    this.iconUrl,
    this.id,
    this.name,
    this.timeAwarded,
  });

  factory Badge.fromRawJson(String str) => Badge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        description: json["description"] == null ? null : json["description"],
        iconUrl: json["icon_url"] == null ? null : json["icon_url"],
        id: json["id"] == null ? null : json["id"].toDouble(),
        name: json["name"] == null ? null : json["name"],
        timeAwarded: json["time_awarded"] == null
            ? null
            : json["time_awarded"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "description": description == null ? null : description,
        "icon_url": iconUrl == null ? null : iconUrl,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "time_awarded": timeAwarded == null ? null : timeAwarded,
      };
}

class BidQualityDetails {
  double score;
  double userId1;

  BidQualityDetails({
    this.score,
    this.userId1,
  });

  factory BidQualityDetails.fromRawJson(String str) =>
      BidQualityDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BidQualityDetails.fromJson(Map<String, dynamic> json) =>
      BidQualityDetails(
        score: json["score"] == null ? null : json["score"].toDouble(),
        userId1:
            json["user_id 1"] == null ? null : json["user_id 1"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "score": score == null ? null : score,
        "user_id 1": userId1 == null ? null : userId1,
      };
}

enum ChosenRole { FREELANCER, EMPLOYER, BOTH }

final chosenRoleValues = EnumValues({
  "both": ChosenRole.BOTH,
  "employer": ChosenRole.EMPLOYER,
  "freelancer": ChosenRole.FREELANCER
});

/**
 * permission: `user:personal`
 */
class DateOfBirth {
  double day;
  double month;
  double year;

  DateOfBirth({
    this.day,
    this.month,
    this.year,
  });

  factory DateOfBirth.fromRawJson(String str) =>
      DateOfBirth.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DateOfBirth.fromJson(Map<String, dynamic> json) => DateOfBirth(
        day: json["day"].toDouble(),
        month: json["month"].toDouble(),
        year: json["year"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "month": month,
        "year": year,
      };
}

class DepositMethods {
  List<DepositMethodElement> depositMethods;
  bool isCcEligibleTrue;

  DepositMethods({
    this.depositMethods,
    this.isCcEligibleTrue,
  });

  factory DepositMethods.fromRawJson(String str) =>
      DepositMethods.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DepositMethods.fromJson(Map<String, dynamic> json) => DepositMethods(
        depositMethods: List<DepositMethodElement>.from(json["deposit_methods"]
            .map((x) => DepositMethodElement.fromJson(x))),
        isCcEligibleTrue: json["is_cc_eligible true"],
      );

  Map<String, dynamic> toJson() => {
        "deposit_methods":
            List<dynamic>.from(depositMethods.map((x) => x.toJson())),
        "is_cc_eligible true": isCcEligibleTrue,
      };
}

class DepositMethodElement {
  DefaultCurrency defaultCurrency;
  DepositFeeConfigs depositFeeConfigs;
  double id;
  String name;
  bool nativeCharge;

  DepositMethodElement({
    this.defaultCurrency,
    this.depositFeeConfigs,
    this.id,
    this.name,
    this.nativeCharge,
  });

  factory DepositMethodElement.fromRawJson(String str) =>
      DepositMethodElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DepositMethodElement.fromJson(Map<String, dynamic> json) =>
      DepositMethodElement(
        defaultCurrency: DefaultCurrency.fromJson(json["default_currency"]),
        depositFeeConfigs:
            DepositFeeConfigs.fromJson(json["deposit_fee_configs"]),
        id: json["id"].toDouble(),
        name: json["name"],
        nativeCharge: json["native_charge"],
      );

  Map<String, dynamic> toJson() => {
        "default_currency": defaultCurrency.toJson(),
        "deposit_fee_configs": depositFeeConfigs.toJson(),
        "id": id,
        "name": name,
        "native_charge": nativeCharge,
      };
}

class DefaultCurrency {
  String code;
  String country;
  double exchangeRate;
  double id;
  bool isExternal;
  String name;
  String sign;

  DefaultCurrency({
    this.code,
    this.country,
    this.exchangeRate,
    this.id,
    this.isExternal,
    this.name,
    this.sign,
  });

  factory DefaultCurrency.fromRawJson(String str) =>
      DefaultCurrency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultCurrency.fromJson(Map<String, dynamic> json) =>
      DefaultCurrency(
        code: json["code"],
        country: json["country"] == null ? null : json["country"],
        exchangeRate: json["exchange_rate"] == null
            ? null
            : json["exchange_rate"].toDouble(),
        id: json["id"].toDouble(),
        isExternal: json["is_external"] == null ? null : json["is_external"],
        name: json["name"] == null ? null : json["name"],
        sign: json["sign"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "country": country == null ? null : country,
        "exchange_rate": exchangeRate == null ? null : exchangeRate,
        "id": id,
        "is_external": isExternal == null ? null : isExternal,
        "name": name == null ? null : name,
        "sign": sign,
      };
}

class DepositFeeConfigs {
  double currencyId;
  DepositMethodEnum depositMethod;
  double feeFixedAmount;
  double feeRate;
  double maxAmount;
  double minAmount;

  DepositFeeConfigs({
    this.currencyId,
    this.depositMethod,
    this.feeFixedAmount,
    this.feeRate,
    this.maxAmount,
    this.minAmount,
  });

  factory DepositFeeConfigs.fromRawJson(String str) =>
      DepositFeeConfigs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DepositFeeConfigs.fromJson(Map<String, dynamic> json) =>
      DepositFeeConfigs(
        currencyId: json["currency_id"].toDouble(),
        depositMethod: json["deposit_method"] == null
            ? null
            : depositMethodEnumValues.map[json["deposit_method"]],
        feeFixedAmount: json["fee_fixed_amount"] == null
            ? null
            : json["fee_fixed_amount"].toDouble(),
        feeRate: json["fee_rate"] == null ? null : json["fee_rate"].toDouble(),
        maxAmount: json["max_amount"].toDouble(),
        minAmount: json["min_amount"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "currency_id": currencyId,
        "deposit_method": depositMethod == null
            ? null
            : depositMethodEnumValues.reverse[depositMethod],
        "fee_fixed_amount": feeFixedAmount == null ? null : feeFixedAmount,
        "fee_rate": feeRate == null ? null : feeRate,
        "max_amount": maxAmount,
        "min_amount": minAmount,
      };
}

enum DepositMethodEnum {
  PAYPAL,
  FLN_BILLING,
  SKRILL,
  WEB_MONEY,
  WIRE,
  PAYPAL_REFERENCE,
  BOLETO,
  ALIPAY,
  UNION_PAY,
  IDEAL,
  SOFORT,
  GIROPAY,
  INTERAC,
  BANCONTACT,
  DOTPAY,
  PAYTM,
  PAYTM_SUBSCRIPTION,
  WECHATPAY,
  GOOGLEPAY,
  APPLEPAY
}

final depositMethodEnumValues = EnumValues({
  "alipay": DepositMethodEnum.ALIPAY,
  "applepay": DepositMethodEnum.APPLEPAY,
  "bancontact": DepositMethodEnum.BANCONTACT,
  "boleto": DepositMethodEnum.BOLETO,
  "dotpay": DepositMethodEnum.DOTPAY,
  "fln_billing": DepositMethodEnum.FLN_BILLING,
  "giropay": DepositMethodEnum.GIROPAY,
  "googlepay": DepositMethodEnum.GOOGLEPAY,
  "ideal": DepositMethodEnum.IDEAL,
  "interac": DepositMethodEnum.INTERAC,
  "paypal": DepositMethodEnum.PAYPAL,
  "paypal_reference": DepositMethodEnum.PAYPAL_REFERENCE,
  "paytm": DepositMethodEnum.PAYTM,
  "paytm_subscription": DepositMethodEnum.PAYTM_SUBSCRIPTION,
  "skrill": DepositMethodEnum.SKRILL,
  "sofort": DepositMethodEnum.SOFORT,
  "union_pay": DepositMethodEnum.UNION_PAY,
  "web_money": DepositMethodEnum.WEB_MONEY,
  "wechatpay": DepositMethodEnum.WECHATPAY,
  "wire": DepositMethodEnum.WIRE
});

class EmployerReputation {
  double earningsScore;
  EmployerReputationEntireHistory entireHistory;
  EmployerReputationJobHistory jobHistory;
  EmployerReputationLast12Months last12Months;
  EmployerReputationLast3Months last3Months;
  EmployerReputationProjectStats projectStats;
  Role role;
  double userId;

  EmployerReputation({
    this.earningsScore,
    this.entireHistory,
    this.jobHistory,
    this.last12Months,
    this.last3Months,
    this.projectStats,
    this.role,
    this.userId,
  });

  factory EmployerReputation.fromRawJson(String str) =>
      EmployerReputation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmployerReputation.fromJson(Map<String, dynamic> json) =>
      EmployerReputation(
        earningsScore: json["earnings_score"].toDouble(),
        entireHistory:
            EmployerReputationEntireHistory.fromJson(json["entire_history"]),
        jobHistory: json["job_history"] == null
            ? null
            : EmployerReputationJobHistory.fromJson(json["job_history"]),
        last12Months:
            EmployerReputationLast12Months.fromJson(json["last12months"]),
        last3Months:
            EmployerReputationLast3Months.fromJson(json["last3months"]),
        projectStats: json["project_stats"] == null
            ? null
            : EmployerReputationProjectStats.fromJson(json["project_stats"]),
        role: json["role"] == null ? null : roleValues.map[json["role"]],
        userId: json["user_id"] == null ? null : json["user_id"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "earnings_score": earningsScore,
        "entire_history": entireHistory.toJson(),
        "job_history": jobHistory == null ? null : jobHistory.toJson(),
        "last12months": last12Months.toJson(),
        "last3months": last3Months.toJson(),
        "project_stats": projectStats == null ? null : projectStats.toJson(),
        "role": role == null ? null : roleValues.reverse[role],
        "user_id": userId == null ? null : userId,
      };
}

class EmployerReputationEntireHistory {
  double all;
  PurpleCategoryRatings categoryRatings;
  double complete;
  double completionRate;
  double earnings;
  double incomplete;
  double incompleteReviews;
  double onBudget;
  double onTime;
  double overall;
  double positive;
  double rehireRate;
  double reviews;

  EmployerReputationEntireHistory({
    this.all,
    this.categoryRatings,
    this.complete,
    this.completionRate,
    this.earnings,
    this.incomplete,
    this.incompleteReviews,
    this.onBudget,
    this.onTime,
    this.overall,
    this.positive,
    this.rehireRate,
    this.reviews,
  });

  factory EmployerReputationEntireHistory.fromRawJson(String str) =>
      EmployerReputationEntireHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmployerReputationEntireHistory.fromJson(Map<String, dynamic> json) =>
      EmployerReputationEntireHistory(
        all: json["all"].toDouble(),
        categoryRatings: json["category_ratings"] == null
            ? null
            : PurpleCategoryRatings.fromJson(json["category_ratings"]),
        complete: json["complete"].toDouble(),
        completionRate: json["completion_rate"].toDouble(),
        earnings: json["earnings"] == null ? null : json["earnings"].toDouble(),
        incomplete: json["incomplete"].toDouble(),
        incompleteReviews: json["incomplete_reviews"].toDouble(),
        onBudget: json["on_budget"].toDouble(),
        onTime: json["on_time"].toDouble(),
        overall: json["overall"].toDouble(),
        positive: json["positive"].toDouble(),
        rehireRate:
            json["rehire_rate"] == null ? null : json["rehire_rate"].toDouble(),
        reviews: json["reviews"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "category_ratings":
            categoryRatings == null ? null : categoryRatings.toJson(),
        "complete": complete,
        "completion_rate": completionRate,
        "earnings": earnings == null ? null : earnings,
        "incomplete": incomplete,
        "incomplete_reviews": incompleteReviews,
        "on_budget": onBudget,
        "on_time": onTime,
        "overall": overall,
        "positive": positive,
        "rehire_rate": rehireRate == null ? null : rehireRate,
        "reviews": reviews,
      };
}

class PurpleCategoryRatings {
  double communication;
  double expertise;
  double hireAgain;
  double professionalism;
  double quality;

  PurpleCategoryRatings({
    this.communication,
    this.expertise,
    this.hireAgain,
    this.professionalism,
    this.quality,
  });

  factory PurpleCategoryRatings.fromRawJson(String str) =>
      PurpleCategoryRatings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleCategoryRatings.fromJson(Map<String, dynamic> json) =>
      PurpleCategoryRatings(
        communication: json["communication"] == null
            ? null
            : json["communication"].toDouble(),
        expertise:
            json["expertise"] == null ? null : json["expertise"].toDouble(),
        hireAgain:
            json["hire_again"] == null ? null : json["hire_again"].toDouble(),
        professionalism: json["professionalism"] == null
            ? null
            : json["professionalism"].toDouble(),
        quality: json["quality"] == null ? null : json["quality"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "communication": communication == null ? null : communication,
        "expertise": expertise == null ? null : expertise,
        "hire_again": hireAgain == null ? null : hireAgain,
        "professionalism": professionalism == null ? null : professionalism,
        "quality": quality == null ? null : quality,
      };
}

class EmployerReputationJobHistory {
  double countOther;
  List<PurpleJobCount> jobCounts;

  EmployerReputationJobHistory({
    this.countOther,
    this.jobCounts,
  });

  factory EmployerReputationJobHistory.fromRawJson(String str) =>
      EmployerReputationJobHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmployerReputationJobHistory.fromJson(Map<String, dynamic> json) =>
      EmployerReputationJobHistory(
        countOther: json["count_other"].toDouble(),
        jobCounts: List<PurpleJobCount>.from(
            json["job_counts"].map((x) => PurpleJobCount.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count_other": countOther,
        "job_counts": List<dynamic>.from(jobCounts.map((x) => x.toJson())),
      };
}

class PurpleJobCount {
  double count;
  PurpleJob job;

  PurpleJobCount({
    this.count,
    this.job,
  });

  factory PurpleJobCount.fromRawJson(String str) =>
      PurpleJobCount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleJobCount.fromJson(Map<String, dynamic> json) => PurpleJobCount(
        count: json["count"].toDouble(),
        job: PurpleJob.fromJson(json["job"]),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "job": job.toJson(),
      };
}

class PurpleJob {
  PurpleCategory category;
  double id;
  bool local;
  String name;
  String seoUrl;

  PurpleJob({
    this.category,
    this.id,
    this.local,
    this.name,
    this.seoUrl,
  });

  factory PurpleJob.fromRawJson(String str) =>
      PurpleJob.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleJob.fromJson(Map<String, dynamic> json) => PurpleJob(
        category: json["category"] == null
            ? null
            : PurpleCategory.fromJson(json["category"]),
        id: json["id"].toDouble(),
        local: json["local"] == null ? null : json["local"],
        name: json["name"] == null ? null : json["name"],
        seoUrl: json["seo_url"] == null ? null : json["seo_url"],
      );

  Map<String, dynamic> toJson() => {
        "category": category == null ? null : category.toJson(),
        "id": id,
        "local": local == null ? null : local,
        "name": name == null ? null : name,
        "seo_url": seoUrl == null ? null : seoUrl,
      };
}

class PurpleCategory {
  double id;
  String name;

  PurpleCategory({
    this.id,
    this.name,
  });

  factory PurpleCategory.fromRawJson(String str) =>
      PurpleCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleCategory.fromJson(Map<String, dynamic> json) => PurpleCategory(
        id: json["id"].toDouble(),
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name == null ? null : name,
      };
}

class EmployerReputationLast12Months {
  double all;
  FluffyCategoryRatings categoryRatings;
  double complete;
  double completionRate;
  double earnings;
  double incomplete;
  double incompleteReviews;
  double onBudget;
  double onTime;
  double overall;
  double positive;
  double rehireRate;
  double reviews;

  EmployerReputationLast12Months({
    this.all,
    this.categoryRatings,
    this.complete,
    this.completionRate,
    this.earnings,
    this.incomplete,
    this.incompleteReviews,
    this.onBudget,
    this.onTime,
    this.overall,
    this.positive,
    this.rehireRate,
    this.reviews,
  });

  factory EmployerReputationLast12Months.fromRawJson(String str) =>
      EmployerReputationLast12Months.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmployerReputationLast12Months.fromJson(Map<String, dynamic> json) =>
      EmployerReputationLast12Months(
        all: json["all"].toDouble(),
        categoryRatings: json["category_ratings"] == null
            ? null
            : FluffyCategoryRatings.fromJson(json["category_ratings"]),
        complete: json["complete"].toDouble(),
        completionRate: json["completion_rate"].toDouble(),
        earnings: json["earnings"] == null ? null : json["earnings"].toDouble(),
        incomplete: json["incomplete"].toDouble(),
        incompleteReviews: json["incomplete_reviews"].toDouble(),
        onBudget: json["on_budget"].toDouble(),
        onTime: json["on_time"].toDouble(),
        overall: json["overall"].toDouble(),
        positive: json["positive"].toDouble(),
        rehireRate:
            json["rehire_rate"] == null ? null : json["rehire_rate"].toDouble(),
        reviews: json["reviews"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "category_ratings":
            categoryRatings == null ? null : categoryRatings.toJson(),
        "complete": complete,
        "completion_rate": completionRate,
        "earnings": earnings == null ? null : earnings,
        "incomplete": incomplete,
        "incomplete_reviews": incompleteReviews,
        "on_budget": onBudget,
        "on_time": onTime,
        "overall": overall,
        "positive": positive,
        "rehire_rate": rehireRate == null ? null : rehireRate,
        "reviews": reviews,
      };
}

class FluffyCategoryRatings {
  double communication;
  double expertise;
  double hireAgain;
  double professionalism;
  double quality;

  FluffyCategoryRatings({
    this.communication,
    this.expertise,
    this.hireAgain,
    this.professionalism,
    this.quality,
  });

  factory FluffyCategoryRatings.fromRawJson(String str) =>
      FluffyCategoryRatings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyCategoryRatings.fromJson(Map<String, dynamic> json) =>
      FluffyCategoryRatings(
        communication: json["communication"] == null
            ? null
            : json["communication"].toDouble(),
        expertise:
            json["expertise"] == null ? null : json["expertise"].toDouble(),
        hireAgain:
            json["hire_again"] == null ? null : json["hire_again"].toDouble(),
        professionalism: json["professionalism"] == null
            ? null
            : json["professionalism"].toDouble(),
        quality: json["quality"] == null ? null : json["quality"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "communication": communication == null ? null : communication,
        "expertise": expertise == null ? null : expertise,
        "hire_again": hireAgain == null ? null : hireAgain,
        "professionalism": professionalism == null ? null : professionalism,
        "quality": quality == null ? null : quality,
      };
}

class EmployerReputationLast3Months {
  double all;
  TentacledCategoryRatings categoryRatings;
  double complete;
  double completionRate;
  double earnings;
  double incomplete;
  double incompleteReviews;
  double onBudget;
  double onTime;
  double overall;
  double positive;
  double rehireRate;
  double reviews;

  EmployerReputationLast3Months({
    this.all,
    this.categoryRatings,
    this.complete,
    this.completionRate,
    this.earnings,
    this.incomplete,
    this.incompleteReviews,
    this.onBudget,
    this.onTime,
    this.overall,
    this.positive,
    this.rehireRate,
    this.reviews,
  });

  factory EmployerReputationLast3Months.fromRawJson(String str) =>
      EmployerReputationLast3Months.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmployerReputationLast3Months.fromJson(Map<String, dynamic> json) =>
      EmployerReputationLast3Months(
        all: json["all"].toDouble(),
        categoryRatings: json["category_ratings"] == null
            ? null
            : TentacledCategoryRatings.fromJson(json["category_ratings"]),
        complete: json["complete"].toDouble(),
        completionRate: json["completion_rate"].toDouble(),
        earnings: json["earnings"] == null ? null : json["earnings"].toDouble(),
        incomplete: json["incomplete"].toDouble(),
        incompleteReviews: json["incomplete_reviews"].toDouble(),
        onBudget: json["on_budget"].toDouble(),
        onTime: json["on_time"].toDouble(),
        overall: json["overall"].toDouble(),
        positive: json["positive"].toDouble(),
        rehireRate:
            json["rehire_rate"] == null ? null : json["rehire_rate"].toDouble(),
        reviews: json["reviews"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "category_ratings":
            categoryRatings == null ? null : categoryRatings.toJson(),
        "complete": complete,
        "completion_rate": completionRate,
        "earnings": earnings == null ? null : earnings,
        "incomplete": incomplete,
        "incomplete_reviews": incompleteReviews,
        "on_budget": onBudget,
        "on_time": onTime,
        "overall": overall,
        "positive": positive,
        "rehire_rate": rehireRate == null ? null : rehireRate,
        "reviews": reviews,
      };
}

class TentacledCategoryRatings {
  double communication;
  double expertise;
  double hireAgain;
  double professionalism;
  double quality;

  TentacledCategoryRatings({
    this.communication,
    this.expertise,
    this.hireAgain,
    this.professionalism,
    this.quality,
  });

  factory TentacledCategoryRatings.fromRawJson(String str) =>
      TentacledCategoryRatings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledCategoryRatings.fromJson(Map<String, dynamic> json) =>
      TentacledCategoryRatings(
        communication: json["communication"] == null
            ? null
            : json["communication"].toDouble(),
        expertise:
            json["expertise"] == null ? null : json["expertise"].toDouble(),
        hireAgain:
            json["hire_again"] == null ? null : json["hire_again"].toDouble(),
        professionalism: json["professionalism"] == null
            ? null
            : json["professionalism"].toDouble(),
        quality: json["quality"] == null ? null : json["quality"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "communication": communication == null ? null : communication,
        "expertise": expertise == null ? null : expertise,
        "hire_again": hireAgain == null ? null : hireAgain,
        "professionalism": professionalism == null ? null : professionalism,
        "quality": quality == null ? null : quality,
      };
}

class EmployerReputationProjectStats {
  double open;

  EmployerReputationProjectStats({
    this.open,
  });

  factory EmployerReputationProjectStats.fromRawJson(String str) =>
      EmployerReputationProjectStats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EmployerReputationProjectStats.fromJson(Map<String, dynamic> json) =>
      EmployerReputationProjectStats(
        open: json["open"] == null ? null : json["open"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "open": open == null ? null : open,
      };
}

enum Role { FREELANCER, EMPLOYER }

final roleValues =
    EnumValues({"employer": Role.EMPLOYER, "freelancer": Role.FREELANCER});

class JobElement {
  FluffyCategory category;
  double id;
  bool local;
  String name;
  String seoUrl;

  JobElement({
    this.category,
    this.id,
    this.local,
    this.name,
    this.seoUrl,
  });

  factory JobElement.fromRawJson(String str) =>
      JobElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory JobElement.fromJson(Map<String, dynamic> json) => JobElement(
        category: json["category"] == null
            ? null
            : FluffyCategory.fromJson(json["category"]),
        id: json["id"].toDouble(),
        local: json["local"] == null ? null : json["local"],
        name: json["name"] == null ? null : json["name"],
        seoUrl: json["seo_url"] == null ? null : json["seo_url"],
      );

  Map<String, dynamic> toJson() => {
        "category": category == null ? null : category.toJson(),
        "id": id,
        "local": local == null ? null : local,
        "name": name == null ? null : name,
        "seo_url": seoUrl == null ? null : seoUrl,
      };
}

class FluffyCategory {
  double id;
  String name;

  FluffyCategory({
    this.id,
    this.name,
  });

  factory FluffyCategory.fromRawJson(String str) =>
      FluffyCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyCategory.fromJson(Map<String, dynamic> json) => FluffyCategory(
        id: json["id"].toDouble(),
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name == null ? null : name,
      };
}

class Location {
  String administritiveArea;
  String city;
  Country country;
  String fullAddress;
  double latitude;
  double longitude;
  String vicinity;

  Location({
    this.administritiveArea,
    this.city,
    this.country,
    this.fullAddress,
    this.latitude,
    this.longitude,
    this.vicinity,
  });

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        administritiveArea: json["administritive_area"] == null
            ? null
            : json["administritive_area"],
        city: json["city"] == null ? null : json["city"],
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        fullAddress: json["full_address"] == null ? null : json["full_address"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"].toDouble(),
        vicinity: json["vicinity"] == null ? null : json["vicinity"],
      );

  Map<String, dynamic> toJson() => {
        "administritive_area":
            administritiveArea == null ? null : administritiveArea,
        "city": city == null ? null : city,
        "country": country == null ? null : country.toJson(),
        "full_address": fullAddress == null ? null : fullAddress,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "vicinity": vicinity == null ? null : vicinity,
      };
}

class Country {
  String code;
  String flagUrl;
  String flagUrlCdn;
  String highresFlagUrl;
  String highresFlagUrlCdn;
  String name;

  Country({
    this.code,
    this.flagUrl,
    this.flagUrlCdn,
    this.highresFlagUrl,
    this.highresFlagUrlCdn,
    this.name,
  });

  factory Country.fromRawJson(String str) => Country.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        code: json["code"] == null ? null : json["code"],
        flagUrl: json["flag_url"] == null ? null : json["flag_url"],
        flagUrlCdn: json["flag_url_cdn"] == null ? null : json["flag_url_cdn"],
        highresFlagUrl:
            json["highres_flag_url"] == null ? null : json["highres_flag_url"],
        highresFlagUrlCdn: json["highres_flag_url_cdn"] == null
            ? null
            : json["highres_flag_url_cdn"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "flag_url": flagUrl == null ? null : flagUrl,
        "flag_url_cdn": flagUrlCdn == null ? null : flagUrlCdn,
        "highres_flag_url": highresFlagUrl == null ? null : highresFlagUrl,
        "highres_flag_url_cdn":
            highresFlagUrlCdn == null ? null : highresFlagUrlCdn,
        "name": name == null ? null : name,
      };
}

class MarketingMobileNumber {
  String countryCode;
  String phoneNumber;

  MarketingMobileNumber({
    this.countryCode,
    this.phoneNumber,
  });

  factory MarketingMobileNumber.fromRawJson(String str) =>
      MarketingMobileNumber.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MarketingMobileNumber.fromJson(Map<String, dynamic> json) =>
      MarketingMobileNumber(
        countryCode: json["country_code"] == null ? null : json["country_code"],
        phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "country_code": countryCode == null ? null : countryCode,
        "phone_number": phoneNumber == null ? null : phoneNumber,
      };
}

class MembershipPackage {
  double bidLimit;
  double bidRefreshRate;
  double id;
  double jobChangeLimit;
  double jobLimit;
  String name;
  double servicePostingLimit;
  double timeBidRefreshed;

  MembershipPackage({
    this.bidLimit,
    this.bidRefreshRate,
    this.id,
    this.jobChangeLimit,
    this.jobLimit,
    this.name,
    this.servicePostingLimit,
    this.timeBidRefreshed,
  });

  factory MembershipPackage.fromRawJson(String str) =>
      MembershipPackage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MembershipPackage.fromJson(Map<String, dynamic> json) =>
      MembershipPackage(
        bidLimit:
            json["bid_limit"] == null ? null : json["bid_limit"].toDouble(),
        bidRefreshRate: json["bid_refresh_rate"] == null
            ? null
            : json["bid_refresh_rate"].toDouble(),
        id: json["id"] == null ? null : json["id"].toDouble(),
        jobChangeLimit: json["job_change_limit"] == null
            ? null
            : json["job_change_limit"].toDouble(),
        jobLimit:
            json["job_limit"] == null ? null : json["job_limit"].toDouble(),
        name: json["name"] == null ? null : json["name"],
        servicePostingLimit: json["service_posting_limit"] == null
            ? null
            : json["service_posting_limit"].toDouble(),
        timeBidRefreshed: json["time_bid_refreshed"] == null
            ? null
            : json["time_bid_refreshed"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "bid_limit": bidLimit == null ? null : bidLimit,
        "bid_refresh_rate": bidRefreshRate == null ? null : bidRefreshRate,
        "id": id == null ? null : id,
        "job_change_limit": jobChangeLimit == null ? null : jobChangeLimit,
        "job_limit": jobLimit == null ? null : jobLimit,
        "name": name == null ? null : name,
        "service_posting_limit":
            servicePostingLimit == null ? null : servicePostingLimit,
        "time_bid_refreshed":
            timeBidRefreshed == null ? null : timeBidRefreshed,
      };
}

class PrimaryCurrency {
  String code;
  String country;
  double exchangeRate;
  double id;
  bool isExternal;
  String name;
  String sign;

  PrimaryCurrency({
    this.code,
    this.country,
    this.exchangeRate,
    this.id,
    this.isExternal,
    this.name,
    this.sign,
  });

  factory PrimaryCurrency.fromRawJson(String str) =>
      PrimaryCurrency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryCurrency.fromJson(Map<String, dynamic> json) =>
      PrimaryCurrency(
        code: json["code"],
        country: json["country"] == null ? null : json["country"],
        exchangeRate: json["exchange_rate"] == null
            ? null
            : json["exchange_rate"].toDouble(),
        id: json["id"].toDouble(),
        isExternal: json["is_external"] == null ? null : json["is_external"],
        name: json["name"] == null ? null : json["name"],
        sign: json["sign"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "country": country == null ? null : country,
        "exchange_rate": exchangeRate == null ? null : exchangeRate,
        "id": id,
        "is_external": isExternal == null ? null : isExternal,
        "name": name == null ? null : name,
        "sign": sign,
      };
}

class Qualification {
  String description;
  String iconName;
  String iconUrl;
  double id;
  double level;
  String name;
  double scorePercentage;
  String type;
  double userPercentile;

  Qualification({
    this.description,
    this.iconName,
    this.iconUrl,
    this.id,
    this.level,
    this.name,
    this.scorePercentage,
    this.type,
    this.userPercentile,
  });

  factory Qualification.fromRawJson(String str) =>
      Qualification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        description: json["description"] == null ? null : json["description"],
        iconName: json["icon_name"] == null ? null : json["icon_name"],
        iconUrl: json["icon_url"] == null ? null : json["icon_url"],
        id: json["id"] == null ? null : json["id"].toDouble(),
        level: json["level"] == null ? null : json["level"].toDouble(),
        name: json["name"] == null ? null : json["name"],
        scorePercentage: json["score_percentage"] == null
            ? null
            : json["score_percentage"].toDouble(),
        type: json["type"] == null ? null : json["type"],
        userPercentile: json["user_percentile"] == null
            ? null
            : json["user_percentile"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "description": description == null ? null : description,
        "icon_name": iconName == null ? null : iconName,
        "icon_url": iconUrl == null ? null : iconUrl,
        "id": id == null ? null : id,
        "level": level == null ? null : level,
        "name": name == null ? null : name,
        "score_percentage": scorePercentage == null ? null : scorePercentage,
        "type": type == null ? null : type,
        "user_percentile": userPercentile == null ? null : userPercentile,
      };
}

class Reputation {
  double earningsScore;
  ReputationEntireHistory entireHistory;
  ReputationJobHistory jobHistory;
  ReputationLast12Months last12Months;
  ReputationLast3Months last3Months;
  ReputationProjectStats projectStats;
  Role role;
  double userId;

  Reputation({
    this.earningsScore,
    this.entireHistory,
    this.jobHistory,
    this.last12Months,
    this.last3Months,
    this.projectStats,
    this.role,
    this.userId,
  });

  factory Reputation.fromRawJson(String str) =>
      Reputation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reputation.fromJson(Map<String, dynamic> json) => Reputation(
        earningsScore: json["earnings_score"].toDouble(),
        entireHistory: ReputationEntireHistory.fromJson(json["entire_history"]),
        jobHistory: json["job_history"] == null
            ? null
            : ReputationJobHistory.fromJson(json["job_history"]),
        last12Months: ReputationLast12Months.fromJson(json["last12months"]),
        last3Months: ReputationLast3Months.fromJson(json["last3months"]),
        projectStats: json["project_stats"] == null
            ? null
            : ReputationProjectStats.fromJson(json["project_stats"]),
        role: json["role"] == null ? null : roleValues.map[json["role"]],
        userId: json["user_id"] == null ? null : json["user_id"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "earnings_score": earningsScore,
        "entire_history": entireHistory.toJson(),
        "job_history": jobHistory == null ? null : jobHistory.toJson(),
        "last12months": last12Months.toJson(),
        "last3months": last3Months.toJson(),
        "project_stats": projectStats == null ? null : projectStats.toJson(),
        "role": role == null ? null : roleValues.reverse[role],
        "user_id": userId == null ? null : userId,
      };
}

class ReputationEntireHistory {
  double all;
  StickyCategoryRatings categoryRatings;
  double complete;
  double completionRate;
  double earnings;
  double incomplete;
  double incompleteReviews;
  double onBudget;
  double onTime;
  double overall;
  double positive;
  double rehireRate;
  double reviews;

  ReputationEntireHistory({
    this.all,
    this.categoryRatings,
    this.complete,
    this.completionRate,
    this.earnings,
    this.incomplete,
    this.incompleteReviews,
    this.onBudget,
    this.onTime,
    this.overall,
    this.positive,
    this.rehireRate,
    this.reviews,
  });

  factory ReputationEntireHistory.fromRawJson(String str) =>
      ReputationEntireHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReputationEntireHistory.fromJson(Map<String, dynamic> json) =>
      ReputationEntireHistory(
        all: json["all"].toDouble(),
        categoryRatings: json["category_ratings"] == null
            ? null
            : StickyCategoryRatings.fromJson(json["category_ratings"]),
        complete: json["complete"].toDouble(),
        completionRate: json["completion_rate"].toDouble(),
        earnings: json["earnings"] == null ? null : json["earnings"].toDouble(),
        incomplete: json["incomplete"].toDouble(),
        incompleteReviews: json["incomplete_reviews"].toDouble(),
        onBudget: json["on_budget"].toDouble(),
        onTime: json["on_time"].toDouble(),
        overall: json["overall"].toDouble(),
        positive: json["positive"].toDouble(),
        rehireRate:
            json["rehire_rate"] == null ? null : json["rehire_rate"].toDouble(),
        reviews: json["reviews"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "category_ratings":
            categoryRatings == null ? null : categoryRatings.toJson(),
        "complete": complete,
        "completion_rate": completionRate,
        "earnings": earnings == null ? null : earnings,
        "incomplete": incomplete,
        "incomplete_reviews": incompleteReviews,
        "on_budget": onBudget,
        "on_time": onTime,
        "overall": overall,
        "positive": positive,
        "rehire_rate": rehireRate == null ? null : rehireRate,
        "reviews": reviews,
      };
}

class StickyCategoryRatings {
  double communication;
  double expertise;
  double hireAgain;
  double professionalism;
  double quality;

  StickyCategoryRatings({
    this.communication,
    this.expertise,
    this.hireAgain,
    this.professionalism,
    this.quality,
  });

  factory StickyCategoryRatings.fromRawJson(String str) =>
      StickyCategoryRatings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyCategoryRatings.fromJson(Map<String, dynamic> json) =>
      StickyCategoryRatings(
        communication: json["communication"] == null
            ? null
            : json["communication"].toDouble(),
        expertise:
            json["expertise"] == null ? null : json["expertise"].toDouble(),
        hireAgain:
            json["hire_again"] == null ? null : json["hire_again"].toDouble(),
        professionalism: json["professionalism"] == null
            ? null
            : json["professionalism"].toDouble(),
        quality: json["quality"] == null ? null : json["quality"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "communication": communication == null ? null : communication,
        "expertise": expertise == null ? null : expertise,
        "hire_again": hireAgain == null ? null : hireAgain,
        "professionalism": professionalism == null ? null : professionalism,
        "quality": quality == null ? null : quality,
      };
}

class ReputationJobHistory {
  double countOther;
  List<FluffyJobCount> jobCounts;

  ReputationJobHistory({
    this.countOther,
    this.jobCounts,
  });

  factory ReputationJobHistory.fromRawJson(String str) =>
      ReputationJobHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReputationJobHistory.fromJson(Map<String, dynamic> json) =>
      ReputationJobHistory(
        countOther: json["count_other"].toDouble(),
        jobCounts: List<FluffyJobCount>.from(
            json["job_counts"].map((x) => FluffyJobCount.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count_other": countOther,
        "job_counts": List<dynamic>.from(jobCounts.map((x) => x.toJson())),
      };
}

class FluffyJobCount {
  double count;
  FluffyJob job;

  FluffyJobCount({
    this.count,
    this.job,
  });

  factory FluffyJobCount.fromRawJson(String str) =>
      FluffyJobCount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyJobCount.fromJson(Map<String, dynamic> json) => FluffyJobCount(
        count: json["count"].toDouble(),
        job: FluffyJob.fromJson(json["job"]),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "job": job.toJson(),
      };
}

class FluffyJob {
  TentacledCategory category;
  double id;
  bool local;
  String name;
  String seoUrl;

  FluffyJob({
    this.category,
    this.id,
    this.local,
    this.name,
    this.seoUrl,
  });

  factory FluffyJob.fromRawJson(String str) =>
      FluffyJob.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyJob.fromJson(Map<String, dynamic> json) => FluffyJob(
        category: json["category"] == null
            ? null
            : TentacledCategory.fromJson(json["category"]),
        id: json["id"].toDouble(),
        local: json["local"] == null ? null : json["local"],
        name: json["name"] == null ? null : json["name"],
        seoUrl: json["seo_url"] == null ? null : json["seo_url"],
      );

  Map<String, dynamic> toJson() => {
        "category": category == null ? null : category.toJson(),
        "id": id,
        "local": local == null ? null : local,
        "name": name == null ? null : name,
        "seo_url": seoUrl == null ? null : seoUrl,
      };
}

class TentacledCategory {
  double id;
  String name;

  TentacledCategory({
    this.id,
    this.name,
  });

  factory TentacledCategory.fromRawJson(String str) =>
      TentacledCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledCategory.fromJson(Map<String, dynamic> json) =>
      TentacledCategory(
        id: json["id"].toDouble(),
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name == null ? null : name,
      };
}

class ReputationLast12Months {
  double all;
  IndigoCategoryRatings categoryRatings;
  double complete;
  double completionRate;
  double earnings;
  double incomplete;
  double incompleteReviews;
  double onBudget;
  double onTime;
  double overall;
  double positive;
  double rehireRate;
  double reviews;

  ReputationLast12Months({
    this.all,
    this.categoryRatings,
    this.complete,
    this.completionRate,
    this.earnings,
    this.incomplete,
    this.incompleteReviews,
    this.onBudget,
    this.onTime,
    this.overall,
    this.positive,
    this.rehireRate,
    this.reviews,
  });

  factory ReputationLast12Months.fromRawJson(String str) =>
      ReputationLast12Months.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReputationLast12Months.fromJson(Map<String, dynamic> json) =>
      ReputationLast12Months(
        all: json["all"].toDouble(),
        categoryRatings: json["category_ratings"] == null
            ? null
            : IndigoCategoryRatings.fromJson(json["category_ratings"]),
        complete: json["complete"].toDouble(),
        completionRate: json["completion_rate"].toDouble(),
        earnings: json["earnings"] == null ? null : json["earnings"].toDouble(),
        incomplete: json["incomplete"].toDouble(),
        incompleteReviews: json["incomplete_reviews"].toDouble(),
        onBudget: json["on_budget"].toDouble(),
        onTime: json["on_time"].toDouble(),
        overall: json["overall"].toDouble(),
        positive: json["positive"].toDouble(),
        rehireRate:
            json["rehire_rate"] == null ? null : json["rehire_rate"].toDouble(),
        reviews: json["reviews"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "category_ratings":
            categoryRatings == null ? null : categoryRatings.toJson(),
        "complete": complete,
        "completion_rate": completionRate,
        "earnings": earnings == null ? null : earnings,
        "incomplete": incomplete,
        "incomplete_reviews": incompleteReviews,
        "on_budget": onBudget,
        "on_time": onTime,
        "overall": overall,
        "positive": positive,
        "rehire_rate": rehireRate == null ? null : rehireRate,
        "reviews": reviews,
      };
}

class IndigoCategoryRatings {
  double communication;
  double expertise;
  double hireAgain;
  double professionalism;
  double quality;

  IndigoCategoryRatings({
    this.communication,
    this.expertise,
    this.hireAgain,
    this.professionalism,
    this.quality,
  });

  factory IndigoCategoryRatings.fromRawJson(String str) =>
      IndigoCategoryRatings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoCategoryRatings.fromJson(Map<String, dynamic> json) =>
      IndigoCategoryRatings(
        communication: json["communication"] == null
            ? null
            : json["communication"].toDouble(),
        expertise:
            json["expertise"] == null ? null : json["expertise"].toDouble(),
        hireAgain:
            json["hire_again"] == null ? null : json["hire_again"].toDouble(),
        professionalism: json["professionalism"] == null
            ? null
            : json["professionalism"].toDouble(),
        quality: json["quality"] == null ? null : json["quality"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "communication": communication == null ? null : communication,
        "expertise": expertise == null ? null : expertise,
        "hire_again": hireAgain == null ? null : hireAgain,
        "professionalism": professionalism == null ? null : professionalism,
        "quality": quality == null ? null : quality,
      };
}

class ReputationLast3Months {
  double all;
  IndecentCategoryRatings categoryRatings;
  double complete;
  double completionRate;
  double earnings;
  double incomplete;
  double incompleteReviews;
  double onBudget;
  double onTime;
  double overall;
  double positive;
  double rehireRate;
  double reviews;

  ReputationLast3Months({
    this.all,
    this.categoryRatings,
    this.complete,
    this.completionRate,
    this.earnings,
    this.incomplete,
    this.incompleteReviews,
    this.onBudget,
    this.onTime,
    this.overall,
    this.positive,
    this.rehireRate,
    this.reviews,
  });

  factory ReputationLast3Months.fromRawJson(String str) =>
      ReputationLast3Months.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReputationLast3Months.fromJson(Map<String, dynamic> json) =>
      ReputationLast3Months(
        all: json["all"].toDouble(),
        categoryRatings: json["category_ratings"] == null
            ? null
            : IndecentCategoryRatings.fromJson(json["category_ratings"]),
        complete: json["complete"].toDouble(),
        completionRate: json["completion_rate"].toDouble(),
        earnings: json["earnings"] == null ? null : json["earnings"].toDouble(),
        incomplete: json["incomplete"].toDouble(),
        incompleteReviews: json["incomplete_reviews"].toDouble(),
        onBudget: json["on_budget"].toDouble(),
        onTime: json["on_time"].toDouble(),
        overall: json["overall"].toDouble(),
        positive: json["positive"].toDouble(),
        rehireRate:
            json["rehire_rate"] == null ? null : json["rehire_rate"].toDouble(),
        reviews: json["reviews"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "all": all,
        "category_ratings":
            categoryRatings == null ? null : categoryRatings.toJson(),
        "complete": complete,
        "completion_rate": completionRate,
        "earnings": earnings == null ? null : earnings,
        "incomplete": incomplete,
        "incomplete_reviews": incompleteReviews,
        "on_budget": onBudget,
        "on_time": onTime,
        "overall": overall,
        "positive": positive,
        "rehire_rate": rehireRate == null ? null : rehireRate,
        "reviews": reviews,
      };
}

class IndecentCategoryRatings {
  double communication;
  double expertise;
  double hireAgain;
  double professionalism;
  double quality;

  IndecentCategoryRatings({
    this.communication,
    this.expertise,
    this.hireAgain,
    this.professionalism,
    this.quality,
  });

  factory IndecentCategoryRatings.fromRawJson(String str) =>
      IndecentCategoryRatings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndecentCategoryRatings.fromJson(Map<String, dynamic> json) =>
      IndecentCategoryRatings(
        communication: json["communication"] == null
            ? null
            : json["communication"].toDouble(),
        expertise:
            json["expertise"] == null ? null : json["expertise"].toDouble(),
        hireAgain:
            json["hire_again"] == null ? null : json["hire_again"].toDouble(),
        professionalism: json["professionalism"] == null
            ? null
            : json["professionalism"].toDouble(),
        quality: json["quality"] == null ? null : json["quality"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "communication": communication == null ? null : communication,
        "expertise": expertise == null ? null : expertise,
        "hire_again": hireAgain == null ? null : hireAgain,
        "professionalism": professionalism == null ? null : professionalism,
        "quality": quality == null ? null : quality,
      };
}

class ReputationProjectStats {
  double open;

  ReputationProjectStats({
    this.open,
  });

  factory ReputationProjectStats.fromRawJson(String str) =>
      ReputationProjectStats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReputationProjectStats.fromJson(Map<String, dynamic> json) =>
      ReputationProjectStats(
        open: json["open"] == null ? null : json["open"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "open": open == null ? null : open,
      };
}

class StatusClass {
  bool depositMade;
  bool emailVerified;
  bool facebookConnected;
  bool identityVerified;
  bool paymentVerified;
  bool phoneVerified;
  bool profileComplete;

  StatusClass({
    this.depositMade,
    this.emailVerified,
    this.facebookConnected,
    this.identityVerified,
    this.paymentVerified,
    this.phoneVerified,
    this.profileComplete,
  });

  factory StatusClass.fromRawJson(String str) =>
      StatusClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StatusClass.fromJson(Map<String, dynamic> json) => StatusClass(
        depositMade: json["deposit_made"] == null ? null : json["deposit_made"],
        emailVerified:
            json["email_verified"] == null ? null : json["email_verified"],
        facebookConnected: json["facebook_connected"] == null
            ? null
            : json["facebook_connected"],
        identityVerified: json["identity_verified"] == null
            ? null
            : json["identity_verified"],
        paymentVerified:
            json["payment_verified"] == null ? null : json["payment_verified"],
        phoneVerified:
            json["phone_verified"] == null ? null : json["phone_verified"],
        profileComplete:
            json["profile_complete"] == null ? null : json["profile_complete"],
      );

  Map<String, dynamic> toJson() => {
        "deposit_made": depositMade == null ? null : depositMade,
        "email_verified": emailVerified == null ? null : emailVerified,
        "facebook_connected":
            facebookConnected == null ? null : facebookConnected,
        "identity_verified": identityVerified == null ? null : identityVerified,
        "payment_verified": paymentVerified == null ? null : paymentVerified,
        "phone_verified": phoneVerified == null ? null : phoneVerified,
        "profile_complete": profileComplete == null ? null : profileComplete,
      };
}

class SupportStatus {
  String shortName;
  Type type;

  SupportStatus({
    this.shortName,
    this.type,
  });

  factory SupportStatus.fromRawJson(String str) =>
      SupportStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SupportStatus.fromJson(Map<String, dynamic> json) => SupportStatus(
        shortName: json["short_name"] == null ? null : json["short_name"],
        type: typeValues.map[json["type"]],
      );

  Map<String, dynamic> toJson() => {
        "short_name": shortName == null ? null : shortName,
        "type": typeValues.reverse[type],
      };
}

enum Type { TECHNICAL, ASSISTED, LOCAL, PROJECT_MANAGEMENT }

final typeValues = EnumValues({
  "assisted": Type.ASSISTED,
  "local": Type.LOCAL,
  "project_management": Type.PROJECT_MANAGEMENT,
  "technical": Type.TECHNICAL
});

class Timezone {
  String country;
  double id;
  double offset;
  String timezone;

  Timezone({
    this.country,
    this.id,
    this.offset,
    this.timezone,
  });

  factory Timezone.fromRawJson(String str) =>
      Timezone.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        country: json["country"] == null ? null : json["country"],
        id: json["id"] == null ? null : json["id"].toDouble(),
        offset: json["offset"] == null ? null : json["offset"].toDouble(),
        timezone: json["timezone"] == null ? null : json["timezone"],
      );

  Map<String, dynamic> toJson() => {
        "country": country == null ? null : country,
        "id": id == null ? null : id,
        "offset": offset == null ? null : offset,
        "timezone": timezone == null ? null : timezone,
      };
}

enum StatusEnum { SUCCESS }

final statusEnumValues = EnumValues({"success": StatusEnum.SUCCESS});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
