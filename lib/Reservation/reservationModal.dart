// To parse this JSON data, do
//
//     final reservationModel = reservationModelFromJson(jsonString);

class ReservationModel {
  int? hotelid;
  int? portalid;
  int? resid;
  int? id;
  DateTime? createdate;
  int? agencyid;
  dynamic agency;
  int? roomtypeid;
  String? roomtype;
  int? givenroomtypeid;
  dynamic givenbedtype;
  String? givenroomtype;
  int? boardtypeid;
  String? boardtype;
  String? stdboardtype;
  dynamic ratetypeid;
  dynamic ratetype;
  dynamic cancelpossible;
  dynamic roomid;
  int? roomcounttype;
  String? roomno;
  int? resstateid;
  String? resstate;
  dynamic channelmanagerid;
  dynamic channelmanager;
  int? accomtypeid;
  String? accomtype;
  dynamic sourceid;
  dynamic source;
  dynamic viptypeid;
  dynamic viptype;
  dynamic portalsellerid;
  dynamic portalseller;
  dynamic marketid;
  dynamic market;
  dynamic nationalityid;
  dynamic nationality;
  dynamic contactlanguage;
  String? guestnames;
  DateTime? checkin;
  DateTime? checkout;
  int? adult;
  int? echd;
  int? ychd;
  int? baby;
  int? tchd;
  dynamic totalprice;
  dynamic currencycode;
  dynamic voucherno;
  dynamic contactphone;
  dynamic contactemail;
  dynamic notes;
  int? paidamount;
  dynamic roomstateid;
  dynamic roomstate;
  bool? waitforTs;
  bool? waitforMb;
  int? respricelast;
  String? roomtypecode;
  int? roomcount;
  dynamic qtime;
  dynamic mctotalprice;
  dynamic repguest;
  int? freechild;
  int? paidchaild;
  int? night;
  int? pax;
  dynamic currdate;
  dynamic currencyrate;
  dynamic currencyid;
  dynamic localRespriceLast;
  dynamic elektracancelreason;
  dynamic cancelDate;
  int? manuelrate;
  dynamic creatorid;
  String? creatoruser;
  dynamic averagenightprice;
  dynamic cinMessage;
  dynamic coutMessage;
  dynamic resMessage;
  dynamic salesprojectid;
  int? ratecodeid;
  String? ratecode;
  dynamic arrivaltime;
  dynamic departuretime;
  DateTime? checkintime;
  DateTime? checkouttime;
  DateTime? checkindate;
  DateTime? checkoutdate;
  DateTime? effectivecheckout;
  int? paymenttype;
  int? paidby;
  String? paymenttypeCode;
  String? paidbyCode;
  bool? isVip;
  bool? isRepeat;
  bool? isViporrepeat;
  bool? isVirtual;
  bool? isQueue;
  int? isEarlycheckin;
  int? isLatecheckout;
  dynamic shareno;
  bool? isshared;
  String? resMovestate;
  int? breakfastPax;
  int? lunchPax;
  int? dinnerPax;
  String? hotel;
  String? uid;
  dynamic xmlname;
  int? payatservice;
  int? costAgentcommission;
  int? kno;
  dynamic basketProfileid;
  int? guestactionid;
  int? hotelactionid;
  int? financeactionid;
  dynamic paymentinfo;
  dynamic resguestid;
  String? basketsummary;
  int? calcstate;
  dynamic paymenttypename;
  dynamic basketname;
  dynamic basketuid;
  String? guestaction;
  String? hotelaction;
  String? financeaction;
  String? resinfo;
  dynamic projectname;
  dynamic latecheckouttime;
  dynamic bedtypeid;
  dynamic bedtype;
  dynamic einvoiceid;
  int? intrace;
  dynamic attachments;
  dynamic agencyCommissionPercent;
  dynamic agencyCommissionAmount;
  dynamic agencyCommissionPaid;
  dynamic agencyCommissionInvoiceno;
  dynamic agencyCommissionInvoicedate;
  dynamic agencyCommissionCurrency;
  dynamic updateuser;
  bool? usevirtualroom;
  dynamic routetofolioaccom;
  dynamic poslimit;
  String? hotelname;
  dynamic canceluser;
  dynamic canceluserid;
  dynamic cancelMessage;
  dynamic hotelierpaystatus;
  dynamic senderresid;
  dynamic vipcolorcode;
  dynamic resviptype;
  dynamic resmodeid;
  dynamic action;
  int? los;
  dynamic modename;
  dynamic earnedbonus;
  dynamic spentbonus;
  dynamic cancelLeaddays;
  dynamic ressubstateid;
  dynamic ressubstate;
  dynamic hasrouting;
  DateTime? ressaledate;
  DateTime? saledate;
  int? notecount;
  dynamic contactperson;
  dynamic segmentid;
  dynamic segmentname;
  dynamic roomMessage;
  dynamic totalpriceall;
  dynamic roomfixed;
  bool? manuelrateenabled;
  dynamic location;
  dynamic locked;
  dynamic manualdiscounts;
  dynamic skipdiscounts;
  dynamic roomtypegroup;
  dynamic onlinecheckincount;
  dynamic igncount;
  dynamic tripreasonid;
  dynamic extendingresid;
  dynamic depositprice;
  dynamic hcrid;
  dynamic agencybalance;
  dynamic guestbalance;
  dynamic generalbalance;
  dynamic foliopayment;
  dynamic roomrev;
  dynamic extrarev;
  dynamic totalrev;
  dynamic nonroomrev;
  dynamic cityledger;
  dynamic prepayment;
  int? balanceafterprepayment;
  dynamic pricenote;
  int? totaladult;
  int? totalchild;
  String? roomtypename;
  dynamic depositcurrencycode;
  dynamic depositpercent;
  dynamic prevresid;
  dynamic boardcolorcode;
  dynamic givenboardtype;
  bool? foliolocked;
  int? invoicecount;
  dynamic approveDate;
  bool? expiredoption;
  bool? onlinecin;
  bool? hideonlist;
  int? transfercount;
  dynamic invoicenote;
  dynamic chd1Age;
  dynamic chd2Age;
  dynamic chd3Age;
  dynamic chd4Age;
  dynamic adjacentid;
  dynamic dailyprice;
  dynamic resgroup;
  dynamic blacklist;
  dynamic resscore;
  dynamic bsrmSentdate;
  dynamic assisteduserid;
  dynamic assisteduser;
  dynamic boardDescription;
  dynamic problemmatic;
  dynamic roomtypegroupid;
  dynamic locationid;
  int? guestcount;
  dynamic membershiptypeid;
  dynamic membercolorcode;
  dynamic membershiptype;
  dynamic posdiscountgroupid;
  bool? autopostAtnight;
  String? givenroomtypename;
  dynamic resgroupid;
  dynamic hkDescriptionid;
  dynamic lastroomno;
  int? roomtypelevel;
  int? givenroomtypelevel;
  dynamic channeltype;
  dynamic contactguest;
  dynamic contactguestid;
  dynamic salesrepid;
  dynamic salesrepname;
  dynamic updateuserid;
  dynamic propertyownerid;
  dynamic discountpercent;
  int? hotspotmode;
  dynamic arrivalhotel;
  dynamic departurehotel;
  dynamic arrivaltransfer;
  dynamic departuretransfer;
  dynamic allnotes;

  var paidchild;

  ReservationModel({
    this.hotelid,
    this.portalid,
    this.resid,
    this.id,
    this.createdate,
    this.agencyid,
    this.agency,
    this.roomtypeid,
    this.roomtype,
    this.givenroomtypeid,
    this.givenbedtype,
    this.givenroomtype,
    this.boardtypeid,
    this.boardtype,
    this.stdboardtype,
    this.ratetypeid,
    this.ratetype,
    this.cancelpossible,
    this.roomid,
    this.roomcounttype,
    this.roomno,
    this.resstateid,
    this.resstate,
    this.channelmanagerid,
    this.channelmanager,
    this.accomtypeid,
    this.accomtype,
    this.sourceid,
    this.source,
    this.viptypeid,
    this.viptype,
    this.portalsellerid,
    this.portalseller,
    this.marketid,
    this.market,
    this.nationalityid,
    this.nationality,
    this.contactlanguage,
    this.guestnames,
    this.checkin,
    this.checkout,
    this.adult,
    this.echd,
    this.ychd,
    this.baby,
    this.tchd,
    this.totalprice,
    this.currencycode,
    this.voucherno,
    this.contactphone,
    this.contactemail,
    this.notes,
    this.paidamount,
    this.roomstateid,
    this.roomstate,
    this.waitforTs,
    this.waitforMb,
    this.respricelast,
    this.roomtypecode,
    this.roomcount,
    this.qtime,
    this.mctotalprice,
    this.repguest,
    this.freechild,
    this.paidchild,
    this.night,
    this.pax,
    this.currdate,
    this.currencyrate,
    this.currencyid,
    this.localRespriceLast,
    this.elektracancelreason,
    this.cancelDate,
    this.manuelrate,
    this.creatorid,
    this.creatoruser,
    this.averagenightprice,
    this.cinMessage,
    this.coutMessage,
    this.resMessage,
    this.salesprojectid,
    this.ratecodeid,
    this.ratecode,
    this.arrivaltime,
    this.departuretime,
    this.checkintime,
    this.checkouttime,
    this.checkindate,
    this.checkoutdate,
    this.effectivecheckout,
    this.paymenttype,
    this.paidby,
    this.paymenttypeCode,
    this.paidbyCode,
    this.isVip,
    this.isRepeat,
    this.isViporrepeat,
    this.isVirtual,
    this.isQueue,
    this.isEarlycheckin,
    this.isLatecheckout,
    this.shareno,
    this.isshared,
    this.resMovestate,
    this.breakfastPax,
    this.lunchPax,
    this.dinnerPax,
    this.hotel,
    this.uid,
    this.xmlname,
    this.payatservice,
    this.costAgentcommission,
    this.kno,
    this.basketProfileid,
    this.guestactionid,
    this.hotelactionid,
    this.financeactionid,
    this.paymentinfo,
    this.resguestid,
    this.basketsummary,
    this.calcstate,
    this.paymenttypename,
    this.basketname,
    this.basketuid,
    this.guestaction,
    this.hotelaction,
    this.financeaction,
    this.resinfo,
    this.projectname,
    this.latecheckouttime,
    this.bedtypeid,
    this.bedtype,
    this.einvoiceid,
    this.intrace,
    this.attachments,
    this.agencyCommissionPercent,
    this.agencyCommissionAmount,
    this.agencyCommissionPaid,
    this.agencyCommissionInvoiceno,
    this.agencyCommissionInvoicedate,
    this.agencyCommissionCurrency,
    this.updateuser,
    this.usevirtualroom,
    this.routetofolioaccom,
    this.poslimit,
    this.hotelname,
    this.canceluser,
    this.canceluserid,
    this.cancelMessage,
    this.hotelierpaystatus,
    this.senderresid,
    this.vipcolorcode,
    this.resviptype,
    this.resmodeid,
    this.action,
    this.los,
    this.modename,
    this.earnedbonus,
    this.spentbonus,
    this.cancelLeaddays,
    this.ressubstateid,
    this.ressubstate,
    this.hasrouting,
    this.ressaledate,
    this.saledate,
    this.notecount,
    this.contactperson,
    this.segmentid,
    this.segmentname,
    this.roomMessage,
    this.totalpriceall,
    this.roomfixed,
    this.manuelrateenabled,
    this.location,
    this.locked,
    this.manualdiscounts,
    this.skipdiscounts,
    this.roomtypegroup,
    this.onlinecheckincount,
    this.igncount,
    this.tripreasonid,
    this.extendingresid,
    this.depositprice,
    this.hcrid,
    this.agencybalance,
    this.guestbalance,
    this.generalbalance,
    this.foliopayment,
    this.roomrev,
    this.extrarev,
    this.totalrev,
    this.nonroomrev,
    this.cityledger,
    this.prepayment,
    this.balanceafterprepayment,
    this.pricenote,
    this.totaladult,
    this.totalchild,
    this.roomtypename,
    this.depositcurrencycode,
    this.depositpercent,
    this.prevresid,
    this.boardcolorcode,
    this.givenboardtype,
    this.foliolocked,
    this.invoicecount,
    this.approveDate,
    this.expiredoption,
    this.onlinecin,
    this.hideonlist,
    this.transfercount,
    this.invoicenote,
    this.chd1Age,
    this.chd2Age,
    this.chd3Age,
    this.chd4Age,
    this.adjacentid,
    this.dailyprice,
    this.resgroup,
    this.blacklist,
    this.resscore,
    this.bsrmSentdate,
    this.assisteduserid,
    this.assisteduser,
    this.boardDescription,
    this.problemmatic,
    this.roomtypegroupid,
    this.locationid,
    this.guestcount,
    this.membershiptypeid,
    this.membercolorcode,
    this.membershiptype,
    this.posdiscountgroupid,
    this.autopostAtnight,
    this.givenroomtypename,
    this.resgroupid,
    this.hkDescriptionid,
    this.lastroomno,
    this.roomtypelevel,
    this.givenroomtypelevel,
    this.channeltype,
    this.contactguest,
    this.contactguestid,
    this.salesrepid,
    this.salesrepname,
    this.updateuserid,
    this.propertyownerid,
    this.discountpercent,
    this.hotspotmode,
    this.arrivalhotel,
    this.departurehotel,
    this.arrivaltransfer,
    this.departuretransfer,
    this.allnotes,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      ReservationModel(
        hotelid: json["HOTELID"],
        portalid: json["PORTALID"],
        resid: json["RESID"],
        id: json["ID"],
        createdate: json["CREATEDATE"] == null
            ? null
            : DateTime.parse(json["CREATEDATE"]),
        agencyid: json["AGENCYID"],
        agency: json["AGENCY"],
        roomtypeid: json["ROOMTYPEID"],
        roomtype: json["ROOMTYPE"],
        givenroomtypeid: json["GIVENROOMTYPEID"],
        givenbedtype: json["GIVENBEDTYPE"],
        givenroomtype: json["GIVENROOMTYPE"],
        boardtypeid: json["BOARDTYPEID"],
        boardtype: json["BOARDTYPE"],
        stdboardtype: json["STDBOARDTYPE"],
        ratetypeid: json["RATETYPEID"],
        ratetype: json["RATETYPE"],
        cancelpossible: json["CANCELPOSSIBLE"],
        roomid: json["ROOMID"],
        roomcounttype: json["ROOMCOUNTTYPE"],
        roomno: json["ROOMNO"],
        resstateid: json["RESSTATEID"],
        resstate: json["RESSTATE"],
        channelmanagerid: json["CHANNELMANAGERID"],
        channelmanager: json["CHANNELMANAGER"],
        accomtypeid: json["ACCOMTYPEID"],
        accomtype: json["ACCOMTYPE"],
        sourceid: json["SOURCEID"],
        source: json["SOURCE"],
        viptypeid: json["VIPTYPEID"],
        viptype: json["VIPTYPE"],
        portalsellerid: json["PORTALSELLERID"],
        portalseller: json["PORTALSELLER"],
        marketid: json["MARKETID"],
        market: json["MARKET"],
        nationalityid: json["NATIONALITYID"],
        nationality: json["NATIONALITY"],
        contactlanguage: json["CONTACTLANGUAGE"],
        guestnames: json["GUESTNAMES"],
        checkin:
            json["CHECKIN"] == null ? null : DateTime.parse(json["CHECKIN"]),
        checkout:
            json["CHECKOUT"] == null ? null : DateTime.parse(json["CHECKOUT"]),
        adult: json["ADULT"],
        echd: json["ECHD"],
        ychd: json["YCHD"],
        baby: json["BABY"],
        tchd: json["TCHD"],
        totalprice: json["TOTALPRICE"],
        currencycode: json["CURRENCYCODE"],
        voucherno: json["VOUCHERNO"],
        contactphone: json["CONTACTPHONE"],
        contactemail: json["CONTACTEMAIL"],
        notes: json["NOTES"],
        paidamount: json["PAIDAMOUNT"],
        roomstateid: json["ROOMSTATEID"],
        roomstate: json["ROOMSTATE"],
        waitforTs: json["WAITFOR_TS"],
        waitforMb: json["WAITFOR_MB"],
        respricelast: json["RESPRICELAST"],
        roomtypecode: json["ROOMTYPECODE"],
        roomcount: json["ROOMCOUNT"],
        qtime: json["QTIME"],
        mctotalprice: json["MCTOTALPRICE"],
        repguest: json["REPGUEST"],
        freechild: json["FREECHILD"],
        paidchild: json["PAIDCHILD"],
        night: json["NIGHT"],
        pax: json["PAX"],
        currdate: json["CURRDATE"],
        currencyrate: json["CURRENCYRATE"],
        currencyid: json["CURRENCYID"],
        localRespriceLast: json["LOCAL_RESPRICE_LAST"],
        elektracancelreason: json["ELEKTRACANCELREASON"],
        cancelDate: json["CANCEL_DATE"],
        manuelrate: json["MANUELRATE"],
        creatorid: json["CREATORID"],
        creatoruser: json["CREATORUSER"],
        averagenightprice: json["AVERAGENIGHTPRICE"],
        cinMessage: json["CIN_MESSAGE"],
        coutMessage: json["COUT_MESSAGE"],
        resMessage: json["RES_MESSAGE"],
        salesprojectid: json["SALESPROJECTID"],
        ratecodeid: json["RATECODEID"],
        ratecode: json["RATECODE"],
        arrivaltime: json["ARRIVALTIME"],
        departuretime: json["DEPARTURETIME"],
        checkintime: json["CHECKINTIME"] == null
            ? null
            : DateTime.parse(json["CHECKINTIME"]),
        checkouttime: json["CHECKOUTTIME"] == null
            ? null
            : DateTime.parse(json["CHECKOUTTIME"]),
        checkindate: json["CHECKINDATE"] == null
            ? null
            : DateTime.parse(json["CHECKINDATE"]),
        checkoutdate: json["CHECKOUTDATE"] == null
            ? null
            : DateTime.parse(json["CHECKOUTDATE"]),
        effectivecheckout: json["EFFECTIVECHECKOUT"] == null
            ? null
            : DateTime.parse(json["EFFECTIVECHECKOUT"]),
        paymenttype: json["PAYMENTTYPE"],
        paidby: json["PAIDBY"],
        paymenttypeCode: json["PAYMENTTYPE_CODE"],
        paidbyCode: json["PAIDBY_CODE"],
        isVip: json["IS_VIP"],
        isRepeat: json["IS_REPEAT"],
        isViporrepeat: json["IS_VIPORREPEAT"],
        isVirtual: json["IS_VIRTUAL"],
        isQueue: json["IS_QUEUE"],
        isEarlycheckin: json["IS_EARLYCHECKIN"],
        isLatecheckout: json["IS_LATECHECKOUT"],
        shareno: json["SHARENO"],
        isshared: json["ISSHARED"],
        resMovestate: json["RES_MOVESTATE"],
        breakfastPax: json["BREAKFAST_PAX"],
        lunchPax: json["LUNCH_PAX"],
        dinnerPax: json["DINNER_PAX"],
        hotel: json["HOTEL"],
        uid: json["UID"],
        xmlname: json["XMLNAME"],
        payatservice: json["PAYATSERVICE"],
        costAgentcommission: json["COST_AGENTCOMMISSION"],
        kno: json["KNO"],
        basketProfileid: json["BASKET_PROFILEID"],
        guestactionid: json["GUESTACTIONID"],
        hotelactionid: json["HOTELACTIONID"],
        financeactionid: json["FINANCEACTIONID"],
        paymentinfo: json["PAYMENTINFO"],
        resguestid: json["RESGUESTID"],
        basketsummary: json["BASKETSUMMARY"],
        calcstate: json["CALCSTATE"],
        paymenttypename: json["PAYMENTTYPENAME"],
        basketname: json["BASKETNAME"],
        basketuid: json["BASKETUID"],
        guestaction: json["GUESTACTION"],
        hotelaction: json["HOTELACTION"],
        financeaction: json["FINANCEACTION"],
        resinfo: json["RESINFO"],
        projectname: json["PROJECTNAME"],
        latecheckouttime: json["LATECHECKOUTTIME"],
        bedtypeid: json["BEDTYPEID"],
        bedtype: json["BEDTYPE"],
        einvoiceid: json["EINVOICEID"],
        intrace: json["INTRACE"],
        attachments: json["ATTACHMENTS"],
        agencyCommissionPercent: json["AGENCY_COMMISSION_PERCENT"],
        agencyCommissionAmount: json["AGENCY_COMMISSION_AMOUNT"],
        agencyCommissionPaid: json["AGENCY_COMMISSION_PAID"],
        agencyCommissionInvoiceno: json["AGENCY_COMMISSION_INVOICENO"],
        agencyCommissionInvoicedate: json["AGENCY_COMMISSION_INVOICEDATE"],
        agencyCommissionCurrency: json["AGENCY_COMMISSION_CURRENCY"],
        updateuser: json["UPDATEUSER"],
        usevirtualroom: json["USEVIRTUALROOM"],
        routetofolioaccom: json["ROUTETOFOLIOACCOM"],
        poslimit: json["POSLIMIT"],
        hotelname: json["HOTELNAME"],
        canceluser: json["CANCELUSER"],
        canceluserid: json["CANCELUSERID"],
        cancelMessage: json["CANCEL_MESSAGE"],
        hotelierpaystatus: json["HOTELIERPAYSTATUS"],
        senderresid: json["SENDERRESID"],
        vipcolorcode: json["VIPCOLORCODE"],
        resviptype: json["RESVIPTYPE"],
        resmodeid: json["RESMODEID"],
        action: json["ACTION"],
        los: json["LOS"],
        modename: json["MODENAME"],
        earnedbonus: json["EARNEDBONUS"],
        spentbonus: json["SPENTBONUS"],
        cancelLeaddays: json["CANCEL_LEADDAYS"],
        ressubstateid: json["RESSUBSTATEID"],
        ressubstate: json["RESSUBSTATE"],
        hasrouting: json["HASROUTING"],
        ressaledate: json["RESSALEDATE"] == null
            ? null
            : DateTime.parse(json["RESSALEDATE"]),
        saledate:
            json["SALEDATE"] == null ? null : DateTime.parse(json["SALEDATE"]),
        notecount: json["NOTECOUNT"],
        contactperson: json["CONTACTPERSON"],
        segmentid: json["SEGMENTID"],
        segmentname: json["SEGMENTNAME"],
        roomMessage: json["ROOM_MESSAGE"],
        totalpriceall: json["TOTALPRICEALL"],
        roomfixed: json["ROOMFIXED"],
        manuelrateenabled: json["MANUELRATEENABLED"],
        location: json["LOCATION"],
        locked: json["LOCKED"],
        manualdiscounts: json["MANUALDISCOUNTS"],
        skipdiscounts: json["SKIPDISCOUNTS"],
        roomtypegroup: json["ROOMTYPEGROUP"],
        onlinecheckincount: json["ONLINECHECKINCOUNT"],
        igncount: json["IGNCOUNT"],
        tripreasonid: json["TRIPREASONID"],
        extendingresid: json["EXTENDINGRESID"],
        depositprice: json["DEPOSITPRICE"],
        hcrid: json["HCRID"],
        agencybalance: json["AGENCYBALANCE"],
        guestbalance: json["GUESTBALANCE"],
        generalbalance: json["GENERALBALANCE"],
        foliopayment: json["FOLIOPAYMENT"],
        roomrev: json["ROOMREV"],
        extrarev: json["EXTRAREV"],
        totalrev: json["TOTALREV"],
        nonroomrev: json["NONROOMREV"],
        cityledger: json["CITYLEDGER"],
        prepayment: json["PREPAYMENT"],
        balanceafterprepayment: json["BALANCEAFTERPREPAYMENT"],
        pricenote: json["PRICENOTE"],
        totaladult: json["TOTALADULT"],
        totalchild: json["TOTALCHILD"],
        roomtypename: json["ROOMTYPENAME"],
        depositcurrencycode: json["DEPOSITCURRENCYCODE"],
        depositpercent: json["DEPOSITPERCENT"],
        prevresid: json["PREVRESID"],
        boardcolorcode: json["BOARDCOLORCODE"],
        givenboardtype: json["GIVENBOARDTYPE"],
        foliolocked: json["FOLIOLOCKED"],
        invoicecount: json["INVOICECOUNT"],
        approveDate: json["APPROVE_DATE"],
        expiredoption: json["EXPIREDOPTION"],
        onlinecin: json["ONLINECIN"],
        hideonlist: json["HIDEONLIST"],
        transfercount: json["TRANSFERCOUNT"],
        invoicenote: json["INVOICENOTE"],
        chd1Age: json["CHD1AGE"],
        chd2Age: json["CHD2AGE"],
        chd3Age: json["CHD3AGE"],
        chd4Age: json["CHD4AGE"],
        adjacentid: json["ADJACENTID"],
        dailyprice: json["DAILYPRICE"],
        resgroup: json["RESGROUP"],
        blacklist: json["BLACKLIST"],
        resscore: json["RESSCORE"],
        bsrmSentdate: json["BSRM_SENTDATE"],
        assisteduserid: json["ASSISTEDUSERID"],
        assisteduser: json["ASSISTEDUSER"],
        boardDescription: json["BOARD_DESCRIPTION"],
        problemmatic: json["PROBLEMMATIC"],
        roomtypegroupid: json["ROOMTYPEGROUPID"],
        locationid: json["LOCATIONID"],
        guestcount: json["GUESTCOUNT"],
        membershiptypeid: json["MEMBERSHIPTYPEID"],
        membercolorcode: json["MEMBERCOLORCODE"],
        membershiptype: json["MEMBERSHIPTYPE"],
        posdiscountgroupid: json["POSDISCOUNTGROUPID"],
        autopostAtnight: json["AUTOPOST_ATNIGHT"],
        givenroomtypename: json["GIVENROOMTYPENAME"],
        resgroupid: json["RESGROUPID"],
        hkDescriptionid: json["HK_DESCRIPTIONID"],
        lastroomno: json["LASTROOMNO"],
        roomtypelevel: json["ROOMTYPELEVEL"],
        givenroomtypelevel: json["GIVENROOMTYPELEVEL"],
        channeltype: json["CHANNELTYPE"],
        contactguest: json["CONTACTGUEST"],
        contactguestid: json["CONTACTGUESTID"],
        salesrepid: json["SALESREPID"],
        salesrepname: json["SALESREPNAME"],
        updateuserid: json["UPDATEUSERID"],
        propertyownerid: json["PROPERTYOWNERID"],
        discountpercent: json["DISCOUNTPERCENT"],
        hotspotmode: json["HOTSPOTMODE"],
        arrivalhotel: json["ARRIVALHOTEL"],
        departurehotel: json["DEPARTUREHOTEL"],
        arrivaltransfer: json["ARRIVALTRANSFER"],
        departuretransfer: json["DEPARTURETRANSFER"],
        allnotes: json["ALLNOTES"],
      );

  Map<String, dynamic> toJson() => {
        "HOTELID": hotelid,
        "PORTALID": portalid,
        "RESID": resid,
        "ID": id,
        "CREATEDATE": createdate?.toIso8601String(),
        "AGENCYID": agencyid,
        "AGENCY": agency,
        "ROOMTYPEID": roomtypeid,
        "ROOMTYPE": roomtype,
        "GIVENROOMTYPEID": givenroomtypeid,
        "GIVENBEDTYPE": givenbedtype,
        "GIVENROOMTYPE": givenroomtype,
        "BOARDTYPEID": boardtypeid,
        "BOARDTYPE": boardtype,
        "STDBOARDTYPE": stdboardtype,
        "RATETYPEID": ratetypeid,
        "RATETYPE": ratetype,
        "CANCELPOSSIBLE": cancelpossible,
        "ROOMID": roomid,
        "ROOMCOUNTTYPE": roomcounttype,
        "ROOMNO": roomno,
        "RESSTATEID": resstateid,
        "RESSTATE": resstate,
        "CHANNELMANAGERID": channelmanagerid,
        "CHANNELMANAGER": channelmanager,
        "ACCOMTYPEID": accomtypeid,
        "ACCOMTYPE": accomtype,
        "SOURCEID": sourceid,
        "SOURCE": source,
        "VIPTYPEID": viptypeid,
        "VIPTYPE": viptype,
        "PORTALSELLERID": portalsellerid,
        "PORTALSELLER": portalseller,
        "MARKETID": marketid,
        "MARKET": market,
        "NATIONALITYID": nationalityid,
        "NATIONALITY": nationality,
        "CONTACTLANGUAGE": contactlanguage,
        "GUESTNAMES": guestnames,
        "CHECKIN": checkin?.toIso8601String(),
        "CHECKOUT": checkout?.toIso8601String(),
        "ADULT": adult,
        "ECHD": echd,
        "YCHD": ychd,
        "BABY": baby,
        "TCHD": tchd,
        "TOTALPRICE": totalprice,
        "CURRENCYCODE": currencycode,
        "VOUCHERNO": voucherno,
        "CONTACTPHONE": contactphone,
        "CONTACTEMAIL": contactemail,
        "NOTES": notes,
        "PAIDAMOUNT": paidamount,
        "ROOMSTATEID": roomstateid,
        "ROOMSTATE": roomstate,
        "WAITFOR_TS": waitforTs,
        "WAITFOR_MB": waitforMb,
        "RESPRICELAST": respricelast,
        "ROOMTYPECODE": roomtypecode,
        "ROOMCOUNT": roomcount,
        "QTIME": qtime,
        "MCTOTALPRICE": mctotalprice,
        "REPGUEST": repguest,
        "FREECHILD": freechild,
        "PAIDCHILD": paidchild,
        "NIGHT": night,
        "PAX": pax,
        "CURRDATE": currdate,
        "CURRENCYRATE": currencyrate,
        "CURRENCYID": currencyid,
        "LOCAL_RESPRICE_LAST": localRespriceLast,
        "ELEKTRACANCELREASON": elektracancelreason,
        "CANCEL_DATE": cancelDate,
        "MANUELRATE": manuelrate,
        "CREATORID": creatorid,
        "CREATORUSER": creatoruser,
        "AVERAGENIGHTPRICE": averagenightprice,
        "CIN_MESSAGE": cinMessage,
        "COUT_MESSAGE": coutMessage,
        "RES_MESSAGE": resMessage,
        "SALESPROJECTID": salesprojectid,
        "RATECODEID": ratecodeid,
        "RATECODE": ratecode,
        "ARRIVALTIME": arrivaltime,
        "DEPARTURETIME": departuretime,
        "CHECKINTIME": checkintime?.toIso8601String(),
        "CHECKOUTTIME": checkouttime?.toIso8601String(),
        "CHECKINDATE": checkindate?.toIso8601String(),
        "CHECKOUTDATE": checkoutdate?.toIso8601String(),
        "EFFECTIVECHECKOUT": effectivecheckout?.toIso8601String(),
        "PAYMENTTYPE": paymenttype,
        "PAIDBY": paidby,
        "PAYMENTTYPE_CODE": paymenttypeCode,
        "PAIDBY_CODE": paidbyCode,
        "IS_VIP": isVip,
        "IS_REPEAT": isRepeat,
        "IS_VIPORREPEAT": isViporrepeat,
        "IS_VIRTUAL": isVirtual,
        "IS_QUEUE": isQueue,
        "IS_EARLYCHECKIN": isEarlycheckin,
        "IS_LATECHECKOUT": isLatecheckout,
        "SHARENO": shareno,
        "ISSHARED": isshared,
        "RES_MOVESTATE": resMovestate,
        "BREAKFAST_PAX": breakfastPax,
        "LUNCH_PAX": lunchPax,
        "DINNER_PAX": dinnerPax,
        "HOTEL": hotel,
        "UID": uid,
        "XMLNAME": xmlname,
        "PAYATSERVICE": payatservice,
        "COST_AGENTCOMMISSION": costAgentcommission,
        "KNO": kno,
        "BASKET_PROFILEID": basketProfileid,
        "GUESTACTIONID": guestactionid,
        "HOTELACTIONID": hotelactionid,
        "FINANCEACTIONID": financeactionid,
        "PAYMENTINFO": paymentinfo,
        "RESGUESTID": resguestid,
        "BASKETSUMMARY": basketsummary,
        "CALCSTATE": calcstate,
        "PAYMENTTYPENAME": paymenttypename,
        "BASKETNAME": basketname,
        "BASKETUID": basketuid,
        "GUESTACTION": guestaction,
        "HOTELACTION": hotelaction,
        "FINANCEACTION": financeaction,
        "RESINFO": resinfo,
        "PROJECTNAME": projectname,
        "LATECHECKOUTTIME": latecheckouttime,
        "BEDTYPEID": bedtypeid,
        "BEDTYPE": bedtype,
        "EINVOICEID": einvoiceid,
        "INTRACE": intrace,
        "ATTACHMENTS": attachments,
        "AGENCY_COMMISSION_PERCENT": agencyCommissionPercent,
        "AGENCY_COMMISSION_AMOUNT": agencyCommissionAmount,
        "AGENCY_COMMISSION_PAID": agencyCommissionPaid,
        "AGENCY_COMMISSION_INVOICENO": agencyCommissionInvoiceno,
        "AGENCY_COMMISSION_INVOICEDATE": agencyCommissionInvoicedate,
        "AGENCY_COMMISSION_CURRENCY": agencyCommissionCurrency,
        "UPDATEUSER": updateuser,
        "USEVIRTUALROOM": usevirtualroom,
        "ROUTETOFOLIOACCOM": routetofolioaccom,
        "POSLIMIT": poslimit,
        "HOTELNAME": hotelname,
        "CANCELUSER": canceluser,
        "CANCELUSERID": canceluserid,
        "CANCEL_MESSAGE": cancelMessage,
        "HOTELIERPAYSTATUS": hotelierpaystatus,
        "SENDERRESID": senderresid,
        "VIPCOLORCODE": vipcolorcode,
        "RESVIPTYPE": resviptype,
        "RESMODEID": resmodeid,
        "ACTION": action,
        "LOS": los,
        "MODENAME": modename,
        "EARNEDBONUS": earnedbonus,
        "SPENTBONUS": spentbonus,
        "CANCEL_LEADDAYS": cancelLeaddays,
        "RESSUBSTATEID": ressubstateid,
        "RESSUBSTATE": ressubstate,
        "HASROUTING": hasrouting,
        "RESSALEDATE": ressaledate?.toIso8601String(),
        "SALEDATE": saledate?.toIso8601String(),
        "NOTECOUNT": notecount,
        "CONTACTPERSON": contactperson,
        "SEGMENTID": segmentid,
        "SEGMENTNAME": segmentname,
        "ROOM_MESSAGE": roomMessage,
        "TOTALPRICEALL": totalpriceall,
        "ROOMFIXED": roomfixed,
        "MANUELRATEENABLED": manuelrateenabled,
        "LOCATION": location,
        "LOCKED": locked,
        "MANUALDISCOUNTS": manualdiscounts,
        "SKIPDISCOUNTS": skipdiscounts,
        "ROOMTYPEGROUP": roomtypegroup,
        "ONLINECHECKINCOUNT": onlinecheckincount,
        "IGNCOUNT": igncount,
        "TRIPREASONID": tripreasonid,
        "EXTENDINGRESID": extendingresid,
        "DEPOSITPRICE": depositprice,
        "HCRID": hcrid,
        "AGENCYBALANCE": agencybalance,
        "GUESTBALANCE": guestbalance,
        "GENERALBALANCE": generalbalance,
        "FOLIOPAYMENT": foliopayment,
        "ROOMREV": roomrev,
        "EXTRAREV": extrarev,
        "TOTALREV": totalrev,
        "NONROOMREV": nonroomrev,
        "CITYLEDGER": cityledger,
        "PREPAYMENT": prepayment,
        "BALANCEAFTERPREPAYMENT": balanceafterprepayment,
        "PRICENOTE": pricenote,
        "TOTALADULT": totaladult,
        "TOTALCHILD": totalchild,
        "ROOMTYPENAME": roomtypename,
        "DEPOSITCURRENCYCODE": depositcurrencycode,
        "DEPOSITPERCENT": depositpercent,
        "PREVRESID": prevresid,
        "BOARDCOLORCODE": boardcolorcode,
        "GIVENBOARDTYPE": givenboardtype,
        "FOLIOLOCKED": foliolocked,
        "INVOICECOUNT": invoicecount,
        "APPROVE_DATE": approveDate,
        "EXPIREDOPTION": expiredoption,
        "ONLINECIN": onlinecin,
        "HIDEONLIST": hideonlist,
        "TRANSFERCOUNT": transfercount,
        "INVOICENOTE": invoicenote,
        "CHD1AGE": chd1Age,
        "CHD2AGE": chd2Age,
        "CHD3AGE": chd3Age,
        "CHD4AGE": chd4Age,
        "ADJACENTID": adjacentid,
        "DAILYPRICE": dailyprice,
        "RESGROUP": resgroup,
        "BLACKLIST": blacklist,
        "RESSCORE": resscore,
        "BSRM_SENTDATE": bsrmSentdate,
        "ASSISTEDUSERID": assisteduserid,
        "ASSISTEDUSER": assisteduser,
        "BOARD_DESCRIPTION": boardDescription,
        "PROBLEMMATIC": problemmatic,
        "ROOMTYPEGROUPID": roomtypegroupid,
        "LOCATIONID": locationid,
        "GUESTCOUNT": guestcount,
        "MEMBERSHIPTYPEID": membershiptypeid,
        "MEMBERCOLORCODE": membercolorcode,
        "MEMBERSHIPTYPE": membershiptype,
        "POSDISCOUNTGROUPID": posdiscountgroupid,
        "AUTOPOST_ATNIGHT": autopostAtnight,
        "GIVENROOMTYPENAME": givenroomtypename,
        "RESGROUPID": resgroupid,
        "HK_DESCRIPTIONID": hkDescriptionid,
        "LASTROOMNO": lastroomno,
        "ROOMTYPELEVEL": roomtypelevel,
        "GIVENROOMTYPELEVEL": givenroomtypelevel,
        "CHANNELTYPE": channeltype,
        "CONTACTGUEST": contactguest,
        "CONTACTGUESTID": contactguestid,
        "SALESREPID": salesrepid,
        "SALESREPNAME": salesrepname,
        "UPDATEUSERID": updateuserid,
        "PROPERTYOWNERID": propertyownerid,
        "DISCOUNTPERCENT": discountpercent,
        "HOTSPOTMODE": hotspotmode,
        "ARRIVALHOTEL": arrivalhotel,
        "DEPARTUREHOTEL": departurehotel,
        "ARRIVALTRANSFER": arrivaltransfer,
        "DEPARTURETRANSFER": departuretransfer,
        "ALLNOTES": allnotes,
      };
}

class ReservationGuestModel {
  dynamic nationalidissuedate;
  dynamic birthdate;
  dynamic arrival;
  dynamic departure;
  dynamic passportexpiredate;
  dynamic idexpiredate;
  dynamic passportissuedate;
  dynamic documenttype;
  dynamic onlinecheckin;
  dynamic guesttype;
  dynamic extractfrompolicelist;
  dynamic age;
  dynamic idhash;
  String? name;
  String? lname;
  dynamic cardno;
  dynamic nationalidno;
  dynamic phone;
  dynamic email;
  String? passportno;
  dynamic gender;
  dynamic birthplace;
  dynamic poslimit;
  dynamic vehicleplate;
  String? fullname;
  dynamic lastname2;
  dynamic pincode;
  int? id;
  int? resid;
  dynamic titleid;
  int? guestid;
  int? hotelid;
  int? portalid;
  int? sortorder;
  dynamic nationalityid;
  dynamic professionalid;
  dynamic elektraid;
  dynamic poscardid;
  dynamic isdisabled;
  dynamic isdeleted;
  DateTime? creationDate;
  DateTime? lastupdateDate;
  dynamic isreservationcontact;
  dynamic arrived;
  dynamic departed;
  dynamic checkinSenttime;
  dynamic checkoutSenttime;
  dynamic blacklist;
  dynamic gdprconfirmed;
  dynamic contactconfirmedemail;
  dynamic contactconfirmedphone;
  dynamic incognito;
  dynamic hescode;
  dynamic nationalityidName;
  dynamic guestidNameIdBirth;
  dynamic guestidBlacklist;
  dynamic titleidTitle;

  ReservationGuestModel({
    this.nationalidissuedate,
    this.birthdate,
    this.arrival,
    this.departure,
    this.passportexpiredate,
    this.idexpiredate,
    this.passportissuedate,
    this.documenttype,
    this.onlinecheckin,
    this.guesttype,
    this.extractfrompolicelist,
    this.age,
    this.idhash,
    this.name,
    this.lname,
    this.cardno,
    this.nationalidno,
    this.phone,
    this.email,
    this.passportno,
    this.gender,
    this.birthplace,
    this.poslimit,
    this.vehicleplate,
    this.fullname,
    this.lastname2,
    this.pincode,
    this.id,
    this.resid,
    this.titleid,
    this.guestid,
    this.hotelid,
    this.portalid,
    this.sortorder,
    this.nationalityid,
    this.professionalid,
    this.elektraid,
    this.poscardid,
    this.isdisabled,
    this.isdeleted,
    this.creationDate,
    this.lastupdateDate,
    this.isreservationcontact,
    this.arrived,
    this.departed,
    this.checkinSenttime,
    this.checkoutSenttime,
    this.blacklist,
    this.gdprconfirmed,
    this.contactconfirmedemail,
    this.contactconfirmedphone,
    this.incognito,
    this.hescode,
    this.nationalityidName,
    this.guestidNameIdBirth,
    this.guestidBlacklist,
    this.titleidTitle,
  });

  factory ReservationGuestModel.fromJson(Map<String, dynamic> json) =>
      ReservationGuestModel(
        nationalidissuedate: json["NATIONALIDISSUEDATE"],
        birthdate: json["BIRTHDATE"],
        arrival: json["ARRIVAL"],
        departure: json["DEPARTURE"],
        passportexpiredate: json["PASSPORTEXPIREDATE"],
        idexpiredate: json["IDEXPIREDATE"],
        passportissuedate: json["PASSPORTISSUEDATE"],
        documenttype: json["DOCUMENTTYPE"],
        onlinecheckin: json["ONLINECHECKIN"],
        guesttype: json["GUESTTYPE"],
        extractfrompolicelist: json["EXTRACTFROMPOLICELIST"],
        age: json["AGE"],
        idhash: json["IDHASH"],
        name: json["NAME"],
        lname: json["LNAME"],
        cardno: json["CARDNO"],
        nationalidno: json["NATIONALIDNO"],
        phone: json["PHONE"],
        email: json["EMAIL"],
        passportno: json["PASSPORTNO"],
        gender: json["GENDER"],
        birthplace: json["BIRTHPLACE"],
        poslimit: json["POSLIMIT"],
        vehicleplate: json["VEHICLEPLATE"],
        fullname: json["FULLNAME"],
        lastname2: json["LASTNAME2"],
        pincode: json["PINCODE"],
        id: json["ID"],
        resid: json["RESID"],
        titleid: json["TITLEID"],
        guestid: json["GUESTID"],
        hotelid: json["HOTELID"],
        portalid: json["PORTALID"],
        sortorder: json["SORTORDER"],
        nationalityid: json["NATIONALITYID"],
        professionalid: json["PROFESSIONALID"],
        elektraid: json["ELEKTRAID"],
        poscardid: json["POSCARDID"],
        isdisabled: json["ISDISABLED"],
        isdeleted: json["ISDELETED"],
        creationDate: json["CREATION_DATE"] == null
            ? null
            : DateTime.parse(json["CREATION_DATE"]),
        lastupdateDate: json["LASTUPDATE_DATE"] == null
            ? null
            : DateTime.parse(json["LASTUPDATE_DATE"]),
        isreservationcontact: json["ISRESERVATIONCONTACT"],
        arrived: json["ARRIVED"],
        departed: json["DEPARTED"],
        checkinSenttime: json["CHECKIN_SENTTIME"],
        checkoutSenttime: json["CHECKOUT_SENTTIME"],
        blacklist: json["BLACKLIST"],
        gdprconfirmed: json["GDPRCONFIRMED"],
        contactconfirmedemail: json["CONTACTCONFIRMEDEMAIL"],
        contactconfirmedphone: json["CONTACTCONFIRMEDPHONE"],
        incognito: json["INCOGNITO"],
        hescode: json["HESCODE"],
        nationalityidName: json["NATIONALITYID_NAME"],
        guestidNameIdBirth: json["GUESTID_NAME_ID_BIRTH"],
        guestidBlacklist: json["GUESTID_BLACKLIST"],
        titleidTitle: json["TITLEID_TITLE"],
      );

  Map<String, dynamic> toJson() => {
        "NATIONALIDISSUEDATE": nationalidissuedate,
        "BIRTHDATE": birthdate,
        "ARRIVAL": arrival,
        "DEPARTURE": departure,
        "PASSPORTEXPIREDATE": passportexpiredate,
        "IDEXPIREDATE": idexpiredate,
        "PASSPORTISSUEDATE": passportissuedate,
        "DOCUMENTTYPE": documenttype,
        "ONLINECHECKIN": onlinecheckin,
        "GUESTTYPE": guesttype,
        "EXTRACTFROMPOLICELIST": extractfrompolicelist,
        "AGE": age,
        "IDHASH": idhash,
        "NAME": name,
        "LNAME": lname,
        "CARDNO": cardno,
        "NATIONALIDNO": nationalidno,
        "PHONE": phone,
        "EMAIL": email,
        "PASSPORTNO": passportno,
        "GENDER": gender,
        "BIRTHPLACE": birthplace,
        "POSLIMIT": poslimit,
        "VEHICLEPLATE": vehicleplate,
        "FULLNAME": fullname,
        "LASTNAME2": lastname2,
        "PINCODE": pincode,
        "ID": id,
        "RESID": resid,
        "TITLEID": titleid,
        "GUESTID": guestid,
        "HOTELID": hotelid,
        "PORTALID": portalid,
        "SORTORDER": sortorder,
        "NATIONALITYID": nationalityid,
        "PROFESSIONALID": professionalid,
        "ELEKTRAID": elektraid,
        "POSCARDID": poscardid,
        "ISDISABLED": isdisabled,
        "ISDELETED": isdeleted,
        "CREATION_DATE": creationDate?.toIso8601String(),
        "LASTUPDATE_DATE": lastupdateDate?.toIso8601String(),
        "ISRESERVATIONCONTACT": isreservationcontact,
        "ARRIVED": arrived,
        "DEPARTED": departed,
        "CHECKIN_SENTTIME": checkinSenttime,
        "CHECKOUT_SENTTIME": checkoutSenttime,
        "BLACKLIST": blacklist,
        "GDPRCONFIRMED": gdprconfirmed,
        "CONTACTCONFIRMEDEMAIL": contactconfirmedemail,
        "CONTACTCONFIRMEDPHONE": contactconfirmedphone,
        "INCOGNITO": incognito,
        "HESCODE": hescode,
        "NATIONALITYID_NAME": nationalityidName,
        "GUESTID_NAME_ID_BIRTH": guestidNameIdBirth,
        "GUESTID_BLACKLIST": guestidBlacklist,
        "TITLEID_TITLE": titleidTitle,
      };
}
