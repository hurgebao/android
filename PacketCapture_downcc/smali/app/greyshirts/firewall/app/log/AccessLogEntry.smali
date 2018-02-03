.class public Lapp/greyshirts/firewall/app/log/AccessLogEntry;
.super Ljava/lang/Object;
.source "AccessLogEntry.java"


# instance fields
.field final allAppName:Ljava/lang/String;

.field final appUid:I

.field final leaderAppName:Ljava/lang/String;

.field final pkgs:Lapp/greyshirts/firewall/app/PackageNames;

.field final prot:I

.field serverHost:Ljava/lang/String;

.field final serverIp:[B

.field final serverPort:I

.field final time:J

.field final type:I


# direct methods
.method private constructor <init>(I[BIIILjava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/app/PackageNames;J)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "serverIp"    # [B
    .param p3, "serverPort"    # I
    .param p4, "prot"    # I
    .param p5, "appUid"    # I
    .param p6, "allAppName"    # Ljava/lang/String;
    .param p7, "leaderAppName"    # Ljava/lang/String;
    .param p8, "pkgs"    # Lapp/greyshirts/firewall/app/PackageNames;
    .param p9, "time"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->type:I

    .line 30
    iput-object p2, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->serverIp:[B

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->serverHost:Ljava/lang/String;

    .line 32
    iput p3, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->serverPort:I

    .line 33
    iput p4, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->prot:I

    .line 34
    iput p5, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->appUid:I

    .line 35
    iput-object p6, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->allAppName:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->leaderAppName:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->pkgs:Lapp/greyshirts/firewall/app/PackageNames;

    .line 38
    iput-wide p9, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->time:J

    .line 39
    return-void
.end method

.method public static newTCPAccessLog(I[BIILjava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/app/PackageNames;)Lapp/greyshirts/firewall/app/log/AccessLogEntry;
    .locals 12
    .param p0, "type"    # I
    .param p1, "serverIp"    # [B
    .param p2, "serverPort"    # I
    .param p3, "appUid"    # I
    .param p4, "allAppName"    # Ljava/lang/String;
    .param p5, "leaderAppName"    # Ljava/lang/String;
    .param p6, "pkgs"    # Lapp/greyshirts/firewall/app/PackageNames;

    .prologue
    .line 43
    new-instance v1, Lapp/greyshirts/firewall/app/log/AccessLogEntry;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lapp/greyshirts/firewall/app/log/AccessLogEntry;-><init>(I[BIIILjava/lang/String;Ljava/lang/String;Lapp/greyshirts/firewall/app/PackageNames;J)V

    return-object v1
.end method


# virtual methods
.method public getAppUid()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->appUid:I

    return v0
.end method

.method public getServerIpBytes()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->serverIp:[B

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->serverPort:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lapp/greyshirts/firewall/app/log/AccessLogEntry;->type:I

    return v0
.end method
