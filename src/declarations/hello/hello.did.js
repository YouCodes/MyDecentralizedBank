export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkMyBalance' : IDL.Func([], [IDL.Float64], ['query']),
    'compoundInterest' : IDL.Func([], [], ['oneway']),
    'getMore' : IDL.Func([IDL.Float64], [], ['oneway']),
    'takeAway' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
