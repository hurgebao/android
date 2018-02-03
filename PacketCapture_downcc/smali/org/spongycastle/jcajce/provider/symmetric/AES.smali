.class public final Lorg/spongycastle/jcajce/provider/symmetric/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Mappings;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParams;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamGen;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And192BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And128BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd256BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd192BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd128BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen256;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen192;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen128;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$RFC5649Wrap;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$RFC3211Wrap;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Wrap;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Poly1305KeyGen;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Poly1305;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AESGMAC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AESCMAC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$GCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$OFB;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$CFB;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$CBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$ECB;
    }
.end annotation


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/symmetric/AES;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/AES;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/AES;->gcmSpecClass:Ljava/lang/Class;

    return-object v0
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 642
    :try_start_0
    const-class v2, Lorg/spongycastle/jcajce/provider/symmetric/AES;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 646
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method
