.class public Lapp/greyshirts/firewall/app/debuglog/PersistentLog;
.super Ljava/lang/Object;
.source "PersistentLog.java"


# static fields
.field private static instance:Lapp/greyshirts/firewall/app/debuglog/PersistentLog;


# instance fields
.field private mFile:Ljava/io/File;

.field private mSdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "persistentlog.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mFile:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mSdf:Ljava/text/SimpleDateFormat;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    const-class v1, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->instance:Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    invoke-direct {v0, p0}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->instance:Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    .line 22
    sget-object v0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->instance:Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    const-string v2, "PersistentLog: created. (first time? process killed?)"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    sget-object v0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->instance:Lapp/greyshirts/firewall/app/debuglog/PersistentLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs declared-synchronized i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mSdf:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x300000

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 40
    const/high16 v6, 0x200000

    new-array v0, v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 43
    .local v1, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v6, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    array-length v8, v0

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 45
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 49
    if-eqz v2, :cond_7

    .line 51
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 57
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 59
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mFile:Ljava/io/File;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 60
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 62
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 65
    if-eqz v4, :cond_6

    .line 67
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v3, v4

    .line 88
    .end local v0    # "buf":[B
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 52
    .restart local v0    # "buf":[B
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 53
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_0

    .line 47
    :catch_1
    move-exception v6

    .line 49
    :goto_2
    if-eqz v1, :cond_0

    .line 51
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 52
    :catch_2
    move-exception v6

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_2

    .line 51
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 53
    :cond_2
    :goto_4
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 36
    .end local v0    # "buf":[B
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 68
    .restart local v0    # "buf":[B
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object v3, v4

    .line 69
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 63
    :catch_4
    move-exception v6

    .line 65
    :goto_5
    if-eqz v3, :cond_1

    .line 67
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 68
    :catch_5
    move-exception v6

    goto :goto_1

    .line 65
    :catchall_2
    move-exception v6

    :goto_6
    if-eqz v3, :cond_3

    .line 67
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 69
    :cond_3
    :goto_7
    :try_start_c
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 73
    .end local v0    # "buf":[B
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v3, 0x0

    .line 75
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :try_start_d
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->mFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 76
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 77
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 80
    if-eqz v4, :cond_1

    .line 82
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    .line 83
    :catch_6
    move-exception v6

    goto :goto_1

    .line 78
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    .line 80
    :goto_8
    if-eqz v3, :cond_1

    .line 82
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_1

    .line 83
    :catch_8
    move-exception v6

    goto :goto_1

    .line 80
    :catchall_3
    move-exception v6

    :goto_9
    if-eqz v3, :cond_5

    .line 82
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 84
    :cond_5
    :goto_a
    :try_start_12
    throw v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 52
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :catch_9
    move-exception v7

    goto :goto_4

    .line 68
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v7

    goto :goto_7

    .line 83
    .end local v0    # "buf":[B
    .end local v1    # "fin":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    goto :goto_a

    .line 80
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v6

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 78
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v6

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 65
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 63
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v6

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 49
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v6

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 47
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_e
    move-exception v6

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_6
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :cond_7
    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method
