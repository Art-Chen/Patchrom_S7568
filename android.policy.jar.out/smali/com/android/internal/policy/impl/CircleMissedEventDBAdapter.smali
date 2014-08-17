.class public Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;
.super Ljava/lang/Object;
.source "CircleMissedEventDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE_CALL_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS missedCallInfo(publisher_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,time INTEGER);"

.field public static final CREATE_TABLE_MSG_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS unreadMsgInfo(publisher_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,content TEXT,time INTEGER);"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DB_NAME:Ljava/lang/String; = "MissedEvent.db"

.field public static final DROP_TABLE_CALL_INFO:Ljava/lang/String; = "DROP TABLE IF EXISTS missedCallInfo"

.field public static final DROP_TABLE_MSG_INFO:Ljava/lang/String; = "DROP TABLE IF EXISTS missedMsgInfo"

.field public static final MISSED_CALL_TABLE:Ljava/lang/String; = "missedCallInfo"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventDBAdapter"

.field public static final UNREAD_MSG_TABLE:Ljava/lang/String; = "unreadMsgInfo"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbHelper:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;

.field private static sInstance:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->DEBUG:Z

    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static deleteMissedCall()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "missedCallInfo"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteUnreadMsg(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 124
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "unreadMsgInfo"

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    return-object v0
.end method

.method public static insertMissedCall(Ljava/lang/String;J)J
    .locals 4
    .parameter "name"
    .parameter "time"

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "missedCallInfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;->close()V

    .line 93
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 94
    return-void
.end method

.method public deleteMissedCallEvent(Landroid/app/Notification;)V
    .locals 2
    .parameter "notification"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 190
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v1, "RemoveMissedCallEvent"

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->deleteMissedCall()I

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    .line 194
    return-void
.end method

.method public deleteMissedEvent(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 3
    .parameter "notification"
    .parameter "pkg"

    .prologue
    .line 149
    const-string v0, "CircleMissedEventDBAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive MISSED_EVENT_REMOVED : notification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 151
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->deleteMissedCallEvent(Landroid/app/Notification;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->deleteUnreadMsgEvent(Landroid/app/Notification;)V

    goto :goto_0
.end method

.method public deleteUnreadMsgEvent(Landroid/app/Notification;)V
    .locals 5
    .parameter "notification"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 200
    iget-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, contactCharSeq:Ljava/lang/String;
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, name:Ljava/lang/String;
    const-string v2, "CircleMissedEventDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveUnreadMsgEvent : name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->deleteUnreadMsg(Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    .line 207
    return-void
.end method

.method public getMissedCallCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "missedCallInfo"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMsgCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 132
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "unreadMsgInfo"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertMissedCallEvent(Landroid/app/Notification;)V
    .locals 6
    .parameter "notification"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 163
    iget-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, name:Ljava/lang/String;
    iget-wide v1, p1, Landroid/app/Notification;->when:J

    .line 166
    .local v1, when:J
    const-string v3, "CircleMissedEventDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddMissedCallEvent : name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->insertMissedCall(Ljava/lang/String;J)J

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    .line 169
    return-void
.end method

.method public insertMissedEvent(Landroid/app/Notification;Ljava/lang/String;)V
    .locals 3
    .parameter "notification"
    .parameter "pkg"

    .prologue
    .line 136
    const-string v0, "CircleMissedEventDBAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive MISSED_EVENT_ARRIVED : notification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 138
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 139
    iget v0, p1, Landroid/app/Notification;->missedCount:I

    if-lez v0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->insertMissedCallEvent(Landroid/app/Notification;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->insertUnreadMsgEvent(Landroid/app/Notification;)V

    goto :goto_0
.end method

.method public insertUnreadMsg(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 5
    .parameter "name"
    .parameter "content"
    .parameter "time"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->getUnreadMsgCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 105
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const-string v2, "time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 107
    const-string v2, "CircleMissedEventDBAdapter"

    const-string v3, "insertUnreadMsg : time is same"

    invoke-static {v2, v3}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-wide/16 v2, 0x0

    .line 116
    :goto_0
    return-wide v2

    .line 112
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "unreadMsgInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public insertUnreadMsgEvent(Landroid/app/Notification;)V
    .locals 10
    .parameter "notification"

    .prologue
    const/4 v9, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;

    .line 176
    iget-object v0, p1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, contactCharSeq:Ljava/lang/String;
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, name:Ljava/lang/String;
    iget-object v6, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, tickerText:Ljava/lang/String;
    const-string v6, ": "

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, content:[Ljava/lang/String;
    iget-wide v4, p1, Landroid/app/Notification;->when:J

    .line 182
    .local v4, when:J
    const-string v6, "CircleMissedEventDBAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddUnreadMsgEvent : name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " when = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    aget-object v6, v1, v9

    invoke-virtual {p0, v2, v6, v4, v5}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->insertUnreadMsg(Ljava/lang/String;Ljava/lang/String;J)J

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->close()V

    .line 185
    return-void
.end method

.method public open()Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;

    .line 87
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    return-object p0
.end method
