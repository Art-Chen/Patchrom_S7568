.class public Landroid/net/wifi/LogoffRunnable;
.super Ljava/lang/Object;
.source "LogoffRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogoffRunnable"


# instance fields
.field private handler:Landroid/net/wifi/AggregationHandler;

.field public mContext:Landroid/content/Context;

.field public urlc:Ljava/net/HttpURLConnection;

.field private xmlreader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/net/wifi/LogoffRunnable;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 55
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v9, Landroid/net/wifi/AggregationHandler;

    invoke-direct {v9}, Landroid/net/wifi/AggregationHandler;-><init>()V

    iput-object v9, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    .line 59
    :try_start_0
    const-string v9, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v9}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v9

    iput-object v9, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    .line 60
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    const-string v10, "http://xml.org/sax/properties/lexical-handler"

    iget-object v11, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v9, v10, v11}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 69
    :try_start_1
    const-string v9, "LogoffRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Log off URL in logoffrunnable "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v9, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 71
    new-instance v7, Ljava/net/URL;

    sget-object v9, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 76
    .local v8, urlConnection:Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 78
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 80
    .local v6, responseCode:I
    const-string v9, "LogoffRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "response code of HTTP GET on Logoff URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_3

    .line 82
    const-string v9, "LogoffRunnable"

    const-string v10, " HTTP GET on Logoff URL successful*******************"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 84
    .local v4, is:Ljava/io/InputStream;
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 85
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-virtual {v9}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v5

    .line 86
    .local v5, msg:Landroid/net/wifi/Message;
    const-string v9, "LogoffRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " msg has Wispr comment"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v5, Landroid/net/wifi/Message;->hasWispr:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v9, v5, Landroid/net/wifi/Message;->hasWispr:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 89
    invoke-virtual {v5}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, comment:Ljava/lang/String;
    const-string v9, "LogoffRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "comment "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/16 v9, 0x3c

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    new-instance v10, Lorg/xml/sax/InputSource;

    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 93
    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-virtual {v9}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v5

    .line 96
    .end local v0           #comment:Ljava/lang/String;
    :cond_0
    iget v9, v5, Landroid/net/wifi/Message;->messageType:I

    const/16 v10, 0x82

    if-ne v9, v10, :cond_1

    .line 97
    iget v9, v5, Landroid/net/wifi/Message;->responseCode:I

    sparse-switch v9, :sswitch_data_0

    .line 108
    const-string v9, "LogoffRunnable"

    const-string v10, "Unknown error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v5           #msg:Landroid/net/wifi/Message;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #responseCode:I
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_2
    :goto_2
    return-void

    .line 61
    :catch_0
    move-exception v3

    .line 63
    .local v3, e1:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 100
    .end local v3           #e1:Lorg/xml/sax/SAXException;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #msg:Landroid/net/wifi/Message;
    .restart local v6       #responseCode:I
    .restart local v7       #url:Ljava/net/URL;
    .restart local v8       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_0
    :try_start_2
    const-string v9, "LogoffRunnable"

    const-string v10, "Logoff Success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v9, 0x0

    sput-object v9, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 119
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #msg:Landroid/net/wifi/Message;
    .end local v6           #responseCode:I
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "LogoffRunnable"

    const-string v10, "on error in executting Logoff HTTPget"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 105
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #msg:Landroid/net/wifi/Message;
    .restart local v6       #responseCode:I
    .restart local v7       #url:Ljava/net/URL;
    .restart local v8       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_1
    :try_start_3
    const-string v9, "LogoffRunnable"

    const-string v10, "Access gateway internal error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #msg:Landroid/net/wifi/Message;
    :cond_3
    const-string v9, "LogoffRunnable"

    const-string v10, "Error ****************"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method
