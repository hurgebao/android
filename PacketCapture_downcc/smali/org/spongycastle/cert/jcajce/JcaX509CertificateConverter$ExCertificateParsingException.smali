.class Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;
.super Ljava/security/cert/CertificateParsingException;
.source "JcaX509CertificateConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExCertificateParsingException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field final synthetic this$0:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;->this$0:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 88
    invoke-direct {p0, p2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 90
    iput-object p3, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;->cause:Ljava/lang/Throwable;

    .line 91
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
