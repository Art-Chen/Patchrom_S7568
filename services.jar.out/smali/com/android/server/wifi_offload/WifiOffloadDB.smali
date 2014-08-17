.class public Lcom/android/server/wifi_offload/WifiOffloadDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiOffloadDB.java"


# static fields
.field public static final COLUMN_DATA_USAGE:Ljava/lang/String; = "datausage"

.field public static final COLUMN_DIALOG_STATUS:Ljava/lang/String; = "dialogstatus"

.field public static final COLUMN_LASTUSED_DATE:Ljava/lang/String; = "lastuseddate"

.field public static final COLUMN_LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "networktype"

.field public static final COLUMN_OFFLOAD_FLAG:Ljava/lang/String; = "offload"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "pkgname"

.field public static final COLUMN_STATION_ID:Ljava/lang/String; = "stationid"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "userid"

.field public static final COLUMN_WIFI_BSSID:Ljava/lang/String; = "wifibssid"

.field public static final COLUMN_WIFI_SSID:Ljava/lang/String; = "wifissid"

.field public static final DATABASE_NAME:Ljava/lang/String; = "wifioffload.db"

.field static final DATABASE_VERSION:I = 0x2

.field public static final DATA_USAGE_TABLE:Ljava/lang/String; = "data_usage"

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_OFFLOAD_TABLE:Ljava/lang/String; = "wifi_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "WifiOffloadDB"

    sput-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    const-string v0, "wifioffload.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method

.method private createWiFiData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 76
    const-string v0, "CREATE TABLE wifi_data(_id INTEGER PRIMARY KEY AUTOINCREMENT,stationid INTEGER,wifissid TEXT NOT NULL,wifibssid TEXT,lastuseddate TEXT,dialogstatus INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "CREATE TABLE data_usage(_id INTEGER PRIMARY KEY AUTOINCREMENT,userid INTEGER,pkgname TEXT NOT NULL,datausage INTEGER,launchcount INTEGER,offload INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "dbase"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "tableName"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, count:I
    if-nez p1, :cond_0

    .line 142
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 145
    :cond_0
    invoke-virtual {p1, p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 146
    return v0
.end method

.method public insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "dbase"
    .parameter "values"
    .parameter "tableName"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    sget-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v1, "dbase is null , so recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 108
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 109
    return-void
.end method

.method public isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .locals 10
    .parameter "dbase"
    .parameter "bssid"
    .parameter "stationID"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 157
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "wifibssid"

    aput-object v0, v2, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifibssid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stationid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "wifi_data"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 158
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 165
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 165
    goto :goto_0
.end method

.method public isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z
    .locals 1
    .parameter "dbase"
    .parameter "bssid"
    .parameter "stationID"
    .parameter "networkType"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->createWiFiData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 59
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "dbase"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "tableName"

    .prologue
    const/4 v5, 0x0

    .line 125
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 127
    .local v0, sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    if-nez p1, :cond_0

    .line 129
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 132
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 134
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method

.method public updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "dbase"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "tableName"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, count:I
    if-nez p1, :cond_0

    .line 115
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 118
    :cond_0
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 119
    return v0
.end method
