variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "compartment_ocid" {}
 
variable "ssh_public_key_file" {
  default = "~/.ssh/id_rsa.pub"
}
 
# Choose an Availability Domain
variable "availability_domain" {
  default = "3"
}
 
variable "internet_gateway_enabled" {
  default = "true"
}
 
variable "instance_shape" {
  default = "VM.Standard2.1"
}
 
# Defines the number of instances to deploy
variable "NumInstances" {
  default = "1"
}
 
variable "BootStrapFile" {
  default = "./cloud-init/vm.cloud-config"
}
 
variable "instance_image_ocid" {
  type = "map"
 
  default = {
    // See https://docs.oracle.com/en-us/iaas/images/image/d536c92a-e374-489c-854a-f07e0c830d1f/
    // Oracle-provided image "Canonical-Ubuntu-20.04-2020.12.11-0"
    ap-chuncheon-1 = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaacgaylswgmzbv2bdmez3tup3op5bbzoka3svuauviigtfil2jaup"
    ap-hyderabad-1 = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaaedssgfz7z6py2g7s4u5zaja4npfdohwid2flr7dltsztfjutynna"
    ap-melbourne-1 = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaab2m55zxqaforq4xilu6u75pevp4j4x7vdrhu7aqdgbmkxb6asimq"
    ap-mumbai-1 = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaa33uoq4iu6vrpq5hcix46fbrhvw7fqzoqg3m7c7cfoftizlup3w2a"
    ap-osaka-1 = "ocid1.image.oc1.ap-osaka-1.aaaaaaaa7d57nwyvomh6fmiwry525jwssihazxvhqaknsf63n223d4namf6a"
    ap-seoul-1 = "ocid1.image.oc1.ap-seoul-1.aaaaaaaa4fnuyktuq6nt2p25y7ntgsvoa2wc64hruuf7nnrto5qayjopvogq"
    ap-sydney-1 = "ocid1.image.oc1.ap-sydney-1.aaaaaaaassmjgnvy5knp3ovgehmr3cnsl4mmh4ga6j7ari4iljqbqxl2vooq"
    ap-tokyo-1 = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaarvho42dzk7pap7vnhraw53bqxkpspf4ehsjvo3akmaveihrqpnq"
    ca-montreal-1 = "ocid1.image.oc1.ca-montreal-1.aaaaaaaanjirn37ekpsolxbiebi6f6ox6e73fidewgensvos2gdhgztegnnq"
    ca-toronto-1 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaaznoyen73fzvsb22365zf4qvkd3rmzmlkzap3hun4ohgdqanzrhvq"
    eu-amsterdam-1 = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaa5h6uyf4d4h4mhlks3xba2uwelwzf7j4e57nwbchlqhaiubpofnxa"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaado5423wtoss2ogoj2xpr4wssqsfy7yeafyekiywhuep7wnvwpvuq"
    eu-zurich-1 = "ocid1.image.oc1.eu-zurich-1.aaaaaaaafxly7cx522hizipfqdfslbpk3d73mjtw3wba7hyk2p2e5asapliq"
    me-dubai-1 = "ocid1.image.oc1.me-dubai-1.aaaaaaaazh7pqoh7bwshcffdug5rsgn2suaqp4a5mpdwzxwxas25sloxs4ia"
    me-jeddah-1 = "ocid1.image.oc1.me-jeddah-1.aaaaaaaatsc4ior2tnhicmjvgyvpuxlxglt55gedf6wcfkgwsxifylavbbiq"
    sa-santiago-1 = "ocid1.image.oc1.sa-santiago-1.aaaaaaaabwzg6z2ixxvgb4eburq3ixahdzbwfqmg46ydxqqkyvczt2n6edqq"
    sa-saopaulo-1 = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaq64v6glstsddu66y57hj4ioeyyl3juamwr63yanmoytfqit2e5iq"
    uk-cardiff-1 = "ocid1.image.oc1.uk-cardiff-1.aaaaaaaaf7u56lhsg3upquv34av7y6jeyqdpx2xnsme5evc2djdfg2m5yreq"
    uk-london-1 = "ocid1.image.oc1.uk-london-1.aaaaaaaaeze67ijxs3hfcctg3x4hjeerpi27axh74fo5ifyzm3yz6fgaybya"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaaalat4ulnbmprft3kbggr6ha2elqavlj3yzhpj7yfaao4w4g46c5q"
    us-gov-ashburn-1 = "ocid1.image.oc3.us-gov-ashburn-1.aaaaaaaaizytjubusuz4ii3r3zvs7pslrpbdfpalmgxgsyel2kbnfzlycnwq"
    us-gov-chicago-1 = "ocid1.image.oc3.us-gov-chicago-1.aaaaaaaanusb3nf4tuq46qfw3tfzpnbpisos4oapiiu2g4obnwup6j3eilhq"
    us-gov-phoenix-1 = "ocid1.image.oc3.us-gov-phoenix-1.aaaaaaaacdwktglwri37obogxng7ex4ca53jgibw5hmoxkqyyrnom4pbotha"
    us-langley-1 = "ocid1.image.oc2.us-langley-1.aaaaaaaawtfojsm4qm2dvj2natn65npfq2fcoiit22p3w3qflegx7v4nouca"
    us-luke-1 = "ocid1.image.oc2.us-luke-1.aaaaaaaa5vxdtfx2gitlmf7bm4vruhxtqnxlre6juhyxbzpjuyxm2cntn5fq"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaabv2zpldicrlrbe2u2r7c5jarsk4ac3lzfdr6pbdwgwtgumqqmw7a"
    us-sanjose-1 = "ocid1.image.oc1.us-sanjose-1.aaaaaaaadw6kfevnxrevxoby2adjdwv3tutzjbstjr6iyeoo233wajrc5qpa"

  }
}
