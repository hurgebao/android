.class public Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES;
.super Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BCPKCS12KeyStore3DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1686
    invoke-static {}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->access$200()Ljava/security/Provider;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;-><init>(Ljava/security/Provider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 1687
    return-void
.end method
