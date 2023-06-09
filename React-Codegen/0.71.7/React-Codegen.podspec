Pod::Spec.new do |s|
    s.name         = "React-Codegen"
    s.version      = "0.71.7"
    s.summary      = "Temp pod for generated files for React Native"
    s.homepage     = "https://facebook.com/"
    s.license      = "Unlicense"
    s.authors      = "Facebook"
    s.compiler_flags = "-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32 -Wno-documentation -Wno-nullability-completeness -std=c++17"
    s.source       = { :git => 'https://github.com/facebook/react-native.git' }
    s.header_mappings_dir = "./"
    s.platforms    = { :ios => "12.4" }
    s.source_files  = ""
  
    s.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\" \"$(PODS_ROOT)/RCT-Folly\" \"${PODS_ROOT}/Headers/Public/React-Codegen/react/renderer/components\" \"$(PODS_ROOT)/Headers/Private/React-Fabric\" \"$(PODS_ROOT)/Headers/Private/React-RCTFabric\"" }
  
    s.dependency "FBReactNativeSpec"
    s.dependency "React-jsiexecutor"
    s.dependency "RCT-Folly"
    # s.dependency "RCTRequired"
    # s.dependency "RCTTypeSafety"
    # s.dependency "React-Core"
    # s.dependency "React-jsi"
    # s.dependency "ReactCommon/turbomodule/bridging"
    # s.dependency "ReactCommon/turbomodule/core"
    s.dependency "React-graphics"
    # s.dependency "React-rncore"
    # s.dependency "hermes-engine"
  end
  