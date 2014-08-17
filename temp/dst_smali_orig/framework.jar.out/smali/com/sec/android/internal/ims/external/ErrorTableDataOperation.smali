.class public Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
.super Ljava/lang/Object;
.source "ErrorTableDataOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteExistingRow(Landroid/content/ContentResolver;)I
    .locals 5
    .parameter "r1"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, rowCount:I
    const/4 v2, 0x0

    .local v2, x:I
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->getRowCount(Landroid/content/ContentResolver;)I

    move-result v1

    const-string v0, "_id =1"

    .local v0, queryString:Ljava/lang/String;
    if-lez v1, :cond_0

    sget-object v3, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_DEL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2
.end method

.method public getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/ErrorTableData;
    .locals 9
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    const-string v0, "Get All Data _________"

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    .local v8, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c1:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v8, Lcom/sec/android/internal/ims/external/ErrorTableData;

    .end local v8           #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    invoke-direct {v8}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .restart local v8       #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    const-string v0, "Timestamp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .local v7, coordIdx:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v0, "ErrorCode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v0, "ErrorString"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .end local v7           #coordIdx:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method

.method public getRowCount(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .local v7, r:I
    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method public insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 15
    .parameter "errData"
    .parameter "r1"

    .prologue
    const/4 v13, 0x0

    .local v13, uri:Landroid/net/Uri;
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v8, 0x0

    .local v8, cnt:I
    const/4 v12, 0x0

    .local v12, r:I
    const/4 v11, 0x0

    .local v11, j:I
    const/4 v7, 0x0

    .local v7, c1:Landroid/database/Cursor;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .local v14, values:Landroid/content/ContentValues;
    const/4 v1, 0x5

    new-array v10, v1, [Lcom/sec/android/internal/ims/external/ErrorTableData;

    .local v10, exist_ErrData:[Lcom/sec/android/internal/ims/external/ErrorTableData;
    sget-object v2, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string v1, "insertDataIntoDB __________"

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count db exist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    if-lez v12, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are already existing records r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v12, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting records record NO :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    aput-object v1, v10, v11

    const-string v1, "Timestamp"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, coordIdx:I
    aget-object v1, v10, v11

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " time stamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v11

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "ErrorCode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    aget-object v1, v10, v11

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v1, "ErrorString"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    aget-object v1, v10, v11

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    const-string v1, "insertDataIntoDB __________"

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v9           #coordIdx:I
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing New Value to DB_____TimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "ErrorCode"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "ErrorString"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    const/4 v11, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing New Value - first value inserted -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_2

    const/4 v1, 0x5

    if-ge v11, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing Next Values -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ErrorCode"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ErrorString"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Inserted values to DB time stamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v8

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing New Value to DB_____TimeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "ErrorCode"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    const-string v1, "ErrorString"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    :cond_2
    const-string v1, "insertDataIntoDB __"

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->log(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c1:Landroid/database/Cursor;
    .end local v8           #cnt:I
    .end local v10           #exist_ErrData:[Lcom/sec/android/internal/ims/external/ErrorTableData;
    .end local v11           #j:I
    .end local v12           #r:I
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    return-object v13
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    const-string v0, "ErrorTableDataOperation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
