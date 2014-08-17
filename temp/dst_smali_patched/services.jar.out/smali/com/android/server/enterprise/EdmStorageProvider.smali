.class public Lcom/android/server/enterprise/EdmStorageProvider;
.super Ljava/lang/Object;
.source "EdmStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    }
.end annotation


# static fields
.field private static final mTAG:Ljava/lang/String; = "EdmStorageProvider"


# instance fields
.field private mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EdmStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x6

    const-string v3, "EdmStorageProvider"

    const-string v4, "Failed to OPEN/CREATE the database"

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addAdmin(ILjava/lang/String;Z)Z
    .locals 1
    .parameter "iUId"
    .parameter "sName"
    .parameter "bCanRemove"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->addAdmin(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, result:Z
    iget-object v4, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v5, ""

    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1
.end method

.method public getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "columns"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "columns"

    .prologue
    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p5}, Lcom/android/server/enterprise/EdmStorageHelper;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->selectGenericTable(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public getInt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .local v1, result:I
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "api"
    .parameter "Admin"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldToReturnValue"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "api"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "api"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "admin"
    .parameter "api"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "api"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldResult"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "api"
    .parameter "Admin"
    .parameter "field"
    .parameter "fieldValue"
    .parameter "fieldToReturnValue"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "tableName"
    .parameter "returnColumns"
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "api"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    const-string v3, ""

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/enterprise/EdmStorageHelper;->select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "admin"
    .parameter "api"
    .parameter "columns"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "api"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 1
    .parameter "api"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 1
    .parameter "api"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v2, p3, v0}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdateGenericTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putLong(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "admin"
    .parameter "api"
    .parameter "policy"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "admin"
    .parameter "api"
    .parameter "cvValues"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "api"
    .parameter "cvValues"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "api"
    .parameter "cvUpdateValues"
    .parameter "cvWhereValues"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "cvValues"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageHelper;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "tablename"
    .parameter "cv"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .parameter "sTableName"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAdminFromDatabase(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->removeAdmin(I)Z

    move-result v0

    return v0
.end method

.method removeByAdmin(Ljava/lang/String;I)Z
    .locals 1
    .parameter "sTableName"
    .parameter "Admin"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByAdmin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "Admin"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .parameter "tablename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EdmStorageHelper;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 1
    .parameter "tablename"
    .parameter "cv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, whereParameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/EdmStorageHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method
