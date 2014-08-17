.class public Lcom/android/internal/policy/impl/TickerUtil;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerUtil$SinaNewsColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$SinaNewsHeadColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$SinaNewsConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$NewsConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$StockConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$FacebookConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$FacebookData;,
        Lcom/android/internal/policy/impl/TickerUtil$StockItem;,
        Lcom/android/internal/policy/impl/TickerUtil$NewsData;,
        Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;,
        Lcom/android/internal/policy/impl/TickerUtil$StockDemon;,
        Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;
    }
.end annotation


# static fields
.field public static final DBG_FB:Z = true

.field private static TAG:Ljava/lang/String;

.field private static calendar:Ljava/util/GregorianCalendar;

.field private static currentDay:Ljava/lang/String;

.field private static currentMonth:Ljava/lang/String;

.field private static currentYear:Ljava/lang/String;

.field private static mFacebookUpdateDate:Ljava/lang/String;

.field private static mNewsUpdateDate:Ljava/lang/String;

.field private static mStockUpdateDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "Ticker"

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 32
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->currentYear:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->currentMonth:Ljava/lang/String;

    .line 34
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 728
    return-void
.end method

.method public static formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    :cond_0
    const-string v1, "MM/dd"

    .line 63
    :cond_1
    :goto_0
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 60
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v1, "dd/MM"

    goto :goto_0
.end method

.method public static formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v1, result:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 51
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 71
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 72
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 73
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 75
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 76
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 77
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "timemills"
    .parameter "contex"

    .prologue
    .line 96
    :try_start_0
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 97
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 99
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 100
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 102
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    :goto_0
    return-object v4

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_0
.end method

.method public static getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 538
    const-string v0, ""

    .line 539
    .local v0, defaultLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 541
    return-object v0
.end method

.method private static getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "ctx"
    .parameter "region"

    .prologue
    const/4 v4, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 107
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sn_daemon_service_key_set_default_news"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, sinaCategory:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 111
    const-string v10, "0"

    .line 112
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SinanewsCategory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v10

    .line 143
    .end local v10           #sinaCategory:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 117
    :cond_2
    const/4 v6, 0x0

    .line 118
    .local v6, DefaultNews:Ljava/lang/String;
    const-string v0, "\\/"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, code:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v0, "REGION"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v0, " = ? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v0, "LANG"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v0, " = ? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v0, "TITLE"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v0, " = ? "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    array-length v0, v7

    if-lt v0, v13, :cond_1

    .line 130
    const/4 v8, 0x0

    .line 131
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;->HEADER_COLS:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, v7, v11

    aput-object v5, v4, v11

    aget-object v5, v7, v12

    aput-object v5, v4, v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "yh_daemon_service_key_set_default_news"

    invoke-static {v5, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "ORDERED ASC,_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    if-eqz v8, :cond_1

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    :cond_3
    const-string v0, "CATEGORY"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v1, "getFacebookData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v10, mFacebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$FacebookData;>;"
    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->setCurrentDateTime()V

    .line 223
    const/4 v9, 0x0

    .line 225
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_2

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$FacebookConstants;->TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 228
    if-eqz v9, :cond_3

    .line 229
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    new-instance v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;

    invoke-direct {v11}, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;-><init>()V

    .line 233
    .local v11, mFacebookData:Lcom/android/internal/policy/impl/TickerUtil$FacebookData;
    const/4 v12, 0x0

    .line 235
    .local v12, mTemp:Ljava/lang/String;
    const-string v0, "message"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    .line 241
    const-string v0, "create_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 242
    invoke-static {p0, v12}, Lcom/android/internal/policy/impl/TickerUtil;->setFacebookDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    .line 244
    const-string v0, "from_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    .line 246
    const-string v0, "post_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    .line 249
    const-string v0, "updated_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 250
    .local v6, FacebookTime:J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .local v8, FacebookUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-static {p0, v6, v7}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-static {p0, v6, v7}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    .line 257
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    .end local v6           #FacebookTime:J
    .end local v8           #FacebookUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v11           #mFacebookData:Lcom/android/internal/policy/impl/TickerUtil$FacebookData;
    .end local v12           #mTemp:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v10

    .line 274
    :goto_0
    return-object v2

    .line 269
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v1, "getFacebookData() cursor no data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getFacebookUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 24
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v19, mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    const/16 v17, 0x1

    .line 283
    .local v17, firstNewsData:Z
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sn_daemon_service_key_set_default_news"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 289
    .local v16, defaultNews:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultNews = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v22, 0x0

    .line 293
    .local v22, value:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sn_daemon_service_key_app_service_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 298
    :goto_1
    and-int/lit8 v1, v22, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v18, 0x1

    .line 300
    .local v18, mAppLockScreen:Z
    :goto_2
    const/4 v15, 0x0

    .line 302
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_regions"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, city:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const-string v13, "cn/zh"

    .line 308
    :cond_0
    if-nez v13, :cond_5

    .line 309
    const/16 v19, 0x0

    .line 381
    .end local v13           #city:Ljava/lang/String;
    .end local v19           #mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_1
    :goto_3
    return-object v19

    .line 286
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #defaultNews:Ljava/lang/String;
    .end local v18           #mAppLockScreen:Z
    .end local v22           #value:I
    .restart local v19       #mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_set_default_news"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #defaultNews:Ljava/lang/String;
    goto :goto_0

    .line 296
    .restart local v22       #value:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_app_service_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    goto :goto_1

    .line 298
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 311
    .restart local v13       #city:Ljava/lang/String;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v18       #mAppLockScreen:Z
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/policy/impl/TickerUtil;->getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 313
    .local v14, currentdefaultNews:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v21, sb:Ljava/lang/StringBuffer;
    const-string v1, "NEWS_CATEGORY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, " = ? "

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$SinaNewsColumns;->SINA_TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil$SinaNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v6

    const-string v6, "NEWS_PUBDATE DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 324
    :goto_4
    if-eqz v15, :cond_b

    .line 325
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 328
    :cond_6
    new-instance v20, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/policy/impl/TickerUtil$NewsData;-><init>()V

    .line 330
    .local v20, mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    const-string v1, "NEWS_TITLE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 332
    const-string v1, "NEWS_CONTENTTEXT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsContentText:Ljava/lang/String;

    .line 334
    const-string v1, "NEWS_CREDIT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 339
    const-string v1, "NEWS_DATE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 343
    .local v7, NewsPublishTime:J
    :goto_5
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 344
    .local v11, NewsTime_buf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const-string v1, "  "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 352
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 353
    const-string v1, "NEWS_TIME"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 358
    .local v9, NewsTime:J
    :goto_6
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    .local v12, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTime:Ljava/lang/String;

    .line 366
    const-string v1, "NEWS_LINK"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    .line 367
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewsURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 370
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNewsUpdateDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 376
    .end local v7           #NewsPublishTime:J
    .end local v9           #NewsTime:J
    .end local v11           #NewsTime_buf:Ljava/lang/StringBuffer;
    .end local v12           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v20           #mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    :cond_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 321
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const-string v6, "NEWS_PUBDATE DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_4

    .line 341
    .restart local v20       #mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    :cond_9
    const-string v1, "NEWS_PUBDATE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .restart local v7       #NewsPublishTime:J
    goto/16 :goto_5

    .line 355
    .restart local v11       #NewsTime_buf:Ljava/lang/StringBuffer;
    :cond_a
    const-string v1, "NEWS_TIME"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .restart local v9       #NewsTime:J
    goto/16 :goto_6

    .line 378
    .end local v7           #NewsPublishTime:J
    .end local v9           #NewsTime:J
    .end local v11           #NewsTime_buf:Ljava/lang/StringBuffer;
    .end local v20           #mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_3
.end method

.method static getNewsUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getStockData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 23
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stockclock_daemon_service_key_app_service_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 387
    .local v11, appServiceStatus:I
    and-int/lit8 v3, v11, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v17, 0x1

    .line 390
    .local v17, mAppLockScreen:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 391
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 392
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 394
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    .line 396
    .local v15, isEdaily:Z
    const/16 v16, 0x0

    .line 398
    .local v16, isSina:Z
    const/16 v20, 0x0

    .line 402
    .local v20, stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_start_0
    const-string v3, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 403
    const-string v3, "content://com.sec.android.daemonapp.ap.yahoostock.stockclock/maininfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 404
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Yahoo:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_1
    :try_start_1
    const-string v3, "com.sec.android.daemonapp.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 412
    const-string v3, "content://com.sec.android.daemonapp.stockclock/daemoninfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 413
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Edaily:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :goto_2
    :try_start_2
    const-string v3, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 421
    const-string v3, "content://com.sec.android.daemonapp.ap.sinastock.stockclock/daemoninfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 422
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Sina:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 423
    const/16 v16, 0x1

    .line 428
    :goto_3
    if-nez v20, :cond_1

    .line 429
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "There is no stock daemon."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v21, 0x0

    .line 534
    :goto_4
    return-object v21

    .line 387
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #isEdaily:Z
    .end local v16           #isSina:Z
    .end local v17           #mAppLockScreen:Z
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 405
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v15       #isEdaily:Z
    .restart local v16       #isSina:Z
    .restart local v17       #mAppLockScreen:Z
    .restart local v19       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :catch_0
    move-exception v14

    .line 406
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 414
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 415
    .local v12, common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Edayly daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 424
    .end local v12           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v12

    .line 425
    .restart local v12       #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 433
    .end local v12           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v21, stocklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v13, :cond_11

    .line 436
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 437
    const/4 v15, 0x1

    .line 439
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    :cond_3
    new-instance v18, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/policy/impl/TickerUtil$StockItem;-><init>()V

    .line 443
    .local v18, mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    const/16 v22, 0x0

    .line 444
    .local v22, value:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    .line 446
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerUtil;->getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 447
    const-string v3, "NAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 451
    :goto_5
    const-string v3, "CURRENT_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 452
    const-string v3, "CHANGE_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 453
    const-string v3, "CHANGE_PERCENT"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 455
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 529
    .end local v18           #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .end local v22           #value:Ljava/lang/String;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 449
    .restart local v18       #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .restart local v22       #value:Ljava/lang/String;
    :cond_5
    const-string v3, "HNAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    goto :goto_5

    .line 458
    :cond_6
    const-string v3, "NAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 459
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 460
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 461
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 462
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_f

    .line 463
    const-string v3, "PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 464
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHANGE : value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v3, "-"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 467
    const-string v22, "0.0"

    .line 468
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "change PRICE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_8
    :goto_7
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 475
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 476
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 477
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_10

    .line 478
    const-string v3, "CHANGE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 479
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHANGE : value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v3, "-"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 482
    const-string v22, "0.0"

    .line 483
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "change CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_a
    :goto_8
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 490
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 491
    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 493
    const-string v3, "CHANGE_PERCENT"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 494
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_c

    .line 495
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHANGE_PERCENT : value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v3, "-"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 498
    const-string v22, "0.0"

    .line 499
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "change CHANGE_PERCENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_c
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    .line 503
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 504
    :cond_d
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 506
    const-string v3, "UPDATE_DATE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 509
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 510
    .local v8, NewsTime:J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 511
    .local v10, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v3, "  "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const-string v3, "  "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->updateDate:Ljava/lang/String;

    .line 516
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 518
    if-nez v16, :cond_e

    .line 520
    const-string v3, "LINK_URL"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    .line 522
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 472
    .end local v8           #NewsTime:J
    .end local v10           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    :cond_f
    const-string v3, "CURRENT_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_7

    .line 487
    :cond_10
    const-string v3, "CHANGE_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 531
    .end local v18           #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .end local v22           #value:Ljava/lang/String;
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_4
.end method

.method static getStockUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static setCurrentDateTime()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 161
    const-string v0, "yyyy"

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->currentYear:Ljava/lang/String;

    .line 162
    const-string v0, "MM"

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->currentMonth:Ljava/lang/String;

    .line 163
    const-string v0, "dd"

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public static setFacebookDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "time"

    .prologue
    .line 167
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v5, result:Ljava/lang/StringBuffer;
    move-object v3, p1

    .line 169
    .local v3, mTime:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 172
    .local v0, date:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :goto_0
    const-string v10, "yyyy"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, year:Ljava/lang/String;
    const-string v10, "MM"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, month:Ljava/lang/String;
    const-string v10, "dd"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, day:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, value:Ljava/lang/String;
    const/4 v8, 0x0

    .line 183
    .local v8, valuewithyear:Ljava/lang/String;
    const-string v10, "yyyy-MM-dd"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 184
    const-string v7, "MM/dd"

    .line 185
    const-string v8, "yyyy/MM/dd"

    .line 194
    :goto_1
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    if-nez v10, :cond_0

    .line 195
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v10, Lcom/android/internal/policy/impl/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 197
    :cond_0
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "day : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentDay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->currentYear:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 201
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->currentDay:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->currentMonth:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 202
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 173
    .end local v1           #day:Ljava/lang/String;
    .end local v4           #month:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valuewithyear:Ljava/lang/String;
    .end local v9           #year:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 174
    .local v2, e:Ljava/text/ParseException;
    sget-object v10, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v11, "parse date ParseException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 186
    .end local v2           #e:Ljava/text/ParseException;
    .restart local v1       #day:Ljava/lang/String;
    .restart local v4       #month:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #valuewithyear:Ljava/lang/String;
    .restart local v9       #year:Ljava/lang/String;
    :cond_1
    const-string v10, "MM-dd-yyyy"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 187
    const-string v7, "MM/dd"

    .line 188
    const-string v8, "MM/dd/yyyy"

    goto/16 :goto_1

    .line 190
    :cond_2
    const-string v7, "dd/MM"

    .line 191
    const-string v8, "dd/MM/yyyy"

    goto/16 :goto_1

    .line 204
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 209
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
