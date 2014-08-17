.class public Landroid/net/wifi/AggregationRunnable$TestHttpGet;
.super Ljava/lang/Object;
.source "AggregationRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AggregationRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestHttpGet"
.end annotation


# instance fields
.field final cr:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/net/wifi/AggregationRunnable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/AggregationRunnable;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget-object v0, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method private isValidLoginUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "refreshUrl"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    const-string v0, "vzwwifi.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postoperation(Ljava/net/URI;)V
    .locals 20
    .parameter "loginURL"

    .prologue
    .line 220
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->isValidLoginUrl(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 224
    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    .local v14, url:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " Login URL postoperation "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 229
    .local v15, urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 230
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 231
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 232
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 233
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v5, content:Ljava/lang/StringBuilder;
    new-instance v2, Landroid/net/wifi/VzwAuth;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/net/wifi/VzwAuth;-><init>(Landroid/content/Context;)V

    .line 238
    .local v2, auth:Landroid/net/wifi/VzwAuth;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getVZWUserName()Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, usrName:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getVZWPassword()Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, pass:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, deviceType:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getModelName()Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, model:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, callingId:Ljava/lang/String;
    const-string v17, "UserName="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v17, "&Password="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v17, "&device-type="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v17, "&device-model-number="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v17, "&calling-station-id="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 251
    .local v11, outputStream:Ljava/io/OutputStream;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 253
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    .line 254
    .local v13, responseCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Response Code of HTTPS POST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v13, v0, :cond_2

    .line 257
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 258
    .local v8, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v17

    new-instance v18, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v17 .. v18}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v10

    .line 260
    .local v10, msg:Landroid/net/wifi/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " msg has Wispr comment"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v10, Landroid/net/wifi/Message;->hasWispr:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-boolean v0, v10, Landroid/net/wifi/Message;->hasWispr:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 262
    invoke-virtual {v10}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "comment "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v17, 0x3c

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v17

    new-instance v18, Lorg/xml/sax/InputSource;

    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface/range {v17 .. v18}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v10

    .line 269
    .end local v4           #comment:Ljava/lang/String;
    :cond_0
    iget v0, v10, Landroid/net/wifi/Message;->messageType:I

    move/from16 v17, v0

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 270
    iget v0, v10, Landroid/net/wifi/Message;->responseCode:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Unknown error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v10           #msg:Landroid/net/wifi/Message;
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 296
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 304
    .end local v2           #auth:Landroid/net/wifi/VzwAuth;
    .end local v3           #callingId:Ljava/lang/String;
    .end local v5           #content:Ljava/lang/StringBuilder;
    .end local v6           #deviceType:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #model:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v12           #pass:Ljava/lang/String;
    .end local v13           #responseCode:I
    .end local v14           #url:Ljava/net/URL;
    .end local v15           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v16           #usrName:Ljava/lang/String;
    :goto_1
    return-void

    .line 272
    .restart local v2       #auth:Landroid/net/wifi/VzwAuth;
    .restart local v3       #callingId:Ljava/lang/String;
    .restart local v5       #content:Ljava/lang/StringBuilder;
    .restart local v6       #deviceType:Ljava/lang/String;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #model:Ljava/lang/String;
    .restart local v10       #msg:Landroid/net/wifi/Message;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .restart local v12       #pass:Ljava/lang/String;
    .restart local v13       #responseCode:I
    .restart local v14       #url:Ljava/net/URL;
    .restart local v15       #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v16       #usrName:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {v10}, Landroid/net/wifi/Message;->getLogoffURL()Ljava/net/URI;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Login Success Logoff URL ---"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "ACTION_AGGREGATION_DELAY"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v2           #auth:Landroid/net/wifi/VzwAuth;
    .end local v3           #callingId:Ljava/lang/String;
    .end local v5           #content:Ljava/lang/StringBuilder;
    .end local v6           #deviceType:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #model:Ljava/lang/String;
    .end local v10           #msg:Landroid/net/wifi/Message;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v12           #pass:Ljava/lang/String;
    .end local v13           #responseCode:I
    .end local v14           #url:Ljava/net/URL;
    .end local v15           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v16           #usrName:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 298
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #auth:Landroid/net/wifi/VzwAuth;
    .restart local v3       #callingId:Ljava/lang/String;
    .restart local v5       #content:Ljava/lang/StringBuilder;
    .restart local v6       #deviceType:Ljava/lang/String;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #model:Ljava/lang/String;
    .restart local v10       #msg:Landroid/net/wifi/Message;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .restart local v12       #pass:Ljava/lang/String;
    .restart local v13       #responseCode:I
    .restart local v14       #url:Ljava/net/URL;
    .restart local v15       #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v16       #usrName:Ljava/lang/String;
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Login failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Access gateway internal error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    .end local v8           #is:Ljava/io/InputStream;
    .end local v10           #msg:Landroid/net/wifi/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Error ****************"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 301
    .end local v2           #auth:Landroid/net/wifi/VzwAuth;
    .end local v3           #callingId:Ljava/lang/String;
    .end local v5           #content:Ljava/lang/StringBuilder;
    .end local v6           #deviceType:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #model:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v12           #pass:Ljava/lang/String;
    .end local v13           #responseCode:I
    .end local v14           #url:Ljava/net/URL;
    .end local v15           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v16           #usrName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Redirect Message doesnot have a valid login URL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public executeHttpGet()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v8, "http://www.verizon.com/"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 139
    .local v7, urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 141
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code of HTTP GET "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0x12e

    if-ne v8, v9, :cond_0

    .line 143
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 144
    .local v2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v8, "Location"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, refreshUrl:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v6, Ljava/net/URL;

    .end local v6           #url:Ljava/net/URL;
    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 150
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 154
    .end local v2           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5           #refreshUrl:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "XML parsing for login URL"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 156
    .local v3, is:Ljava/io/InputStream;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 157
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 158
    .local v4, msg:Landroid/net/wifi/Message;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " msg has Wispr comment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Landroid/net/wifi/Message;->hasWispr:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v8, v4, Landroid/net/wifi/Message;->hasWispr:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 161
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, comment:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "comment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v8, 0x3c

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 165
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 168
    .end local v0           #comment:Ljava/lang/String;
    :cond_1
    iget v8, v4, Landroid/net/wifi/Message;->messageType:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 169
    iget v8, v4, Landroid/net/wifi/Message;->responseCode:I

    sparse-switch v8, :sswitch_data_0

    .line 183
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 192
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 198
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_1
    return-void

    .line 171
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "login URL ---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/net/wifi/Message;->getLoginURL()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getLoginURL()Ljava/net/URI;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->postoperation(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 193
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_1
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Network adminstration error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 195
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 196
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v1           #e:Lorg/xml/sax/SAXException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_2
    :try_start_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Access gateway internal error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DELAY"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x69 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method
